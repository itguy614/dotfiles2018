<?php

$finder = PhpCsFixer\Finder::create()
    ->exclude('node_modules')
    ->exclude('vendor')
    ->exclude('config')
    ->exclude('storage')
    ->in(__DIR__);

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
        'array_indentation' => true,
        'array_syntax' => ['syntax' => 'short'],
        'binary_operator_spaces' => ['align_equals' => true, 'align_double_arrow' => true],
        'blank_line_after_opening_tag' => true,
        'blank_line_before_statement' => true,
        'braces' => ['allow_single_line_closure' => true],
        'cast_spaces' => true,
        'class_attributes_separation' => ['elements' => ['const', 'method', 'property']],
        'combine_consecutive_unsets' => true,
        'concat_space' => ['spacing' => 'one'],
        'declare_equal_normalize' => ['space' => 'single'],
        'hash_to_slash_comment' => true,
        'include' => true,
        'linebreak_after_opening_tag' => true,
        'lowercase_cast' => true,
        'method_argument_space' => ['ensure_fully_multiline' => false],
        'method_separation' => true,
        'no_blank_lines_after_class_opening' => true,
        'no_blank_lines_after_phpdoc' => true,
        'no_break_comment' => false,
        'no_extra_blank_lines' => ['tokens' => ['extra']],
        'no_multiline_whitespace_around_double_arrow' => true,
        'no_multiline_whitespace_before_semicolons' => true,
        'no_spaces_around_offset' => true,
        'no_trailing_comma_in_singleline_array' => true,
        'no_unused_imports' => true,
        'no_useless_else' => true,
        'no_useless_return' => true,
        'no_whitespace_before_comma_in_array' => true,
        'no_whitespace_in_blank_line' => true,
        'normalize_index_brace' => true,
        'object_operator_without_whitespace' => true,
        'ordered_class_elements' => ['sortAlgorithm' => 'alpha'],
        'ordered_imports' => ['sort_algorithm' => 'alpha'],
        'phpdoc_indent' => true,
        'phpdoc_to_comment' => true,
        'phpdoc_trim' => true,
        'return_type_declaration' => ['space_before' => 'one'],
        'single_blank_line_before_namespace' => true,
        'single_line_after_imports' => true,
        'single_quote' => true,
        'space_after_semicolon' => ['remove_in_empty_for_expressions' => true],
        'ternary_operator_spaces' => true,
        'ternary_to_null_coalescing' => true,
        'trailing_comma_in_multiline_array' => true,
        'trim_array_spaces' => true,
        'unary_operator_spaces' => true,
        'whitespace_after_comma_in_array' => true,
    ])
    ->setLineEnding("\n")
    ->setUsingCache(false)
    ->setFinder($finder)
    ;
