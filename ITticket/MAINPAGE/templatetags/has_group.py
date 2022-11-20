from django import template

register = template.Library()


@register.filter(name="has_group")
def has_group(user, group_name):
    """
    Filtr sprawdza czy użytkownik należy do grup

    """
    return user.groups.filter(name=group_name).exists()
