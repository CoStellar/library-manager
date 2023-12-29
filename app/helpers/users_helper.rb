module UsersHelper
  def render_user_info(user)
    content_tag(:div, class: 'user-info') do
      content_tag(:p) do
        concat content_tag(:strong, 'Nazwa:')
        concat " #{user.username}"
        concat tag(:br)
        concat content_tag(:strong, 'Email:')
        concat " #{user.email}"
        concat tag(:br)
        concat content_tag(:strong, 'Rola:')
        concat " #{user.role}"
        concat tag(:br)
        concat content_tag(:strong, 'Status zatwierdzenia:')
        concat " #{user.approved.nil? || user.approved == 'false' ? 'Oczekujący' : 'Zatwierdzony'}"
      end +
      render_approval_form(user) +
      render_disapproval_form(user)
    end
  end

  private

  def render_approval_form(user)
    if user.approved == 'false' || user.approved.nil?
      form_for(user, url: update_approval_path(user), method: :put, data: { turbo_stream_target: "user_#{user.id}" }) do |f|
        content_tag(:div) do
          concat f.hidden_field(:authenticity_token, value: form_authenticity_token)
          concat f.submit('Zatwierdź', data: { turbo_stream_frame: 'reload', turbo_confirm: 'Czy na pewno chcesz zatwierdzić ten profil?' })
        end
      end
    end
  end

  def render_disapproval_form(user)
    if user.approved == 'false' || user.approved.nil?
      form_for(user, url: update_disapproval_path(user), method: :put, data: { turbo_stream_target: "user_#{user.id}" }) do |f|
        content_tag(:div) do
          concat f.hidden_field(:authenticity_token, value: form_authenticity_token)
          concat f.submit('Usuń profil', data: { turbo_stream_frame: 'reload', confirm: 'Czy na pewno chcesz usunąć ten profil?' })
        end
      end
    end
  end
end
