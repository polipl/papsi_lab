# Generated by Django 4.1.3 on 2022-11-11 15:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('DICTIONARY', '0007_remove_tickets_assign_user_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='tickets',
            options={'verbose_name': 'Ticket', 'verbose_name_plural': 'Tickety'},
        ),
        migrations.CreateModel(
            name='TicketsHistory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment', models.TextField(blank=True, null=True)),
                ('create_date', models.DateTimeField(auto_now=True)),
                ('ticket', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='DICTIONARY.tickets')),
            ],
            options={
                'verbose_name': 'Historia Ticketu',
                'verbose_name_plural': 'Historie Ticketów',
            },
        ),
    ]