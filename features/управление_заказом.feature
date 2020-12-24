# This file contains a user story for demonstration only.
# Learn how to get started with Behat and BDD on Behat's website:
# http://behat.org/en/latest/quick_start.html

Feature:
    Проверяем функционал

    Scenario: После отправки заказ на кухню, на кухне создаются блюда для приготовления
        Given Тестовый заказ создан
        When Оператор отправляет заказ на кухню
        Then Блюда на кухне созданы

    Scenario: Повар готовит все блюда в заказе, который поступил на кухню - заказ готов
        Given Тестовый заказ создан
        And Оператор отправляет заказ на кухню
        When Повар приготовил все блюда
        Then Заказ переходит в статус "Приготовлен"

    Scenario: При поступлении заказа на кухню и при его приготовлении происходит отправка уведомлений
        Given Тестовый заказ создан
        And Оператор отправляет заказ на кухню
        When Повар приготовил все блюда
        Then Уведомления отправлены