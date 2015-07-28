module ExpendituresHelper
  def same_user? user 
    current_user == user
  end
end


# <% if !same_user? expenditure.user %>
#           <p>You cannot change other's expenses </p>
# <% end %>