-- Задача 1 
-- Условие: В таблице books_in_use нужно обновить столбец fine_amount.
-- 1. Если книга возвращена в течение разрешённого срока (14 дней включительно), значение `fine_amount` не изменяется.
-- 2. Если срок пользования книгой превышает 14 дней, значение `fine_amount` обновляется: начисляется штраф в размере 10 рублей за каждый день просрочки.
-- 3. Обновлять только записи, в которых дата возврата (`return_date`) указана.
UPDATE books_in_use
SET fine_amount = IF(
    DATEDIFF(return_date, issue_date) > return_period,
    10 * (DATEDIFF(return_date, issue_date) - return_period),
    fine_amount
)
WHERE return_date IS NOT NULL;