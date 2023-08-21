-- Subscription plan price cannot be negative, pricing should always be >= 0
-- This returns records where this isn't true to make the test fail

{% test assert_column_greater_than_0(model, column_name) %}

    SELECT
        *
    FROM {{ model }}
    WHERE {{ column_name }} <= 0


{% endtest %}
