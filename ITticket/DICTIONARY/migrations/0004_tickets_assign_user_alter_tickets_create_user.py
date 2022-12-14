# Generated by Django 4.1.3 on 2022-11-11 14:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("DICTIONARY", "0003_tickets_create_user"),
    ]

    operations = [
        migrations.AddField(
            model_name="tickets",
            name="assign_user",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="assign_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AlterField(
            model_name="tickets",
            name="create_user",
            field=models.ForeignKey(
                blank=True,
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="create_user",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
    ]
