from django.contrib.auth.models import User
from model_bakery.recipe import Recipe, seq

from ..models import Session, SmartCollection

UserRecipe = Recipe(User, id=seq(0))


SessionRecipe = Recipe(
    Session,
    id=seq(0),
    site="test.myshopify.com",
    token="TESTTOKEN",
)


SmartCollectionRecipe = Recipe(SmartCollection, id=seq(0))
