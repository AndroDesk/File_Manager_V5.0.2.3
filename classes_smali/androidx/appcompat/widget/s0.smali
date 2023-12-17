.class public final Landroidx/appcompat/widget/s0;
.super Lq0/c;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/s0$a;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public final k:Landroidx/appcompat/widget/SearchView;

.field public final l:Landroid/app/SearchableInfo;

.field public final m:Landroid/content/Context;

.field public final n:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public final o:I

.field public p:I

.field public q:Landroid/content/res/ColorStateList;

.field public r:I

.field public s:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lq0/c;-><init>(Landroid/content/Context;I)V

    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/s0;->p:I

    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/appcompat/widget/s0;->r:I

    .line 14
    iput v0, p0, Landroidx/appcompat/widget/s0;->s:I

    .line 16
    iput v0, p0, Landroidx/appcompat/widget/s0;->v:I

    .line 18
    iput v0, p0, Landroidx/appcompat/widget/s0;->w:I

    .line 20
    iput v0, p0, Landroidx/appcompat/widget/s0;->x:I

    .line 22
    iput v0, p0, Landroidx/appcompat/widget/s0;->y:I

    .line 24
    iput-object p2, p0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    .line 26
    iput-object p3, p0, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    .line 28
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    .line 31
    move-result p2

    .line 32
    iput p2, p0, Landroidx/appcompat/widget/s0;->o:I

    .line 34
    iput-object p1, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 36
    iput-object p4, p0, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 38
    return-void
.end method

.method public static i(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-ne p1, v1, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    .line 10
    return-object p0

    .line 11
    :catch_a
    move-exception p0

    .line 12
    const-string p1, "SuggestionsAdapter"

    .line 14
    const-string v1, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 16
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p2

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Landroidx/appcompat/widget/s0$a;

    .line 12
    iget v0, v1, Landroidx/appcompat/widget/s0;->y:I

    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eq v0, v4, :cond_17

    .line 18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 21
    move-result v0

    .line 22
    move v4, v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v4, v5

    .line 25
    :goto_18
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 27
    const/16 v6, 0x8

    .line 29
    if-eqz v0, :cond_36

    .line 31
    iget v0, v1, Landroidx/appcompat/widget/s0;->r:I

    .line 33
    invoke-static {v2, v0}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    iget-object v7, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_33

    .line 48
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_36
    :goto_36
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->b:Landroid/widget/TextView;

    .line 57
    const/4 v7, 0x2

    .line 58
    const/4 v8, 0x1

    .line 59
    if-eqz v0, :cond_be

    .line 61
    iget v0, v1, Landroidx/appcompat/widget/s0;->v:I

    .line 63
    invoke-static {v2, v0}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_85

    .line 69
    iget-object v9, v1, Landroidx/appcompat/widget/s0;->q:Landroid/content/res/ColorStateList;

    .line 71
    if-nez v9, :cond_66

    .line 73
    new-instance v9, Landroid/util/TypedValue;

    .line 75
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 78
    iget-object v10, v1, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 80
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 83
    move-result-object v10

    .line 84
    sget v11, Lh/a;->textColorSearchUrl:I

    .line 86
    invoke-virtual {v10, v11, v9, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    iget-object v10, v1, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 91
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v10

    .line 95
    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    .line 97
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 100
    move-result-object v9

    .line 101
    iput-object v9, v1, Landroidx/appcompat/widget/s0;->q:Landroid/content/res/ColorStateList;

    .line 103
    :cond_66
    new-instance v9, Landroid/text/SpannableString;

    .line 105
    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    .line 110
    const/4 v11, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x0

    .line 113
    iget-object v14, v1, Landroidx/appcompat/widget/s0;->q:Landroid/content/res/ColorStateList;

    .line 115
    const/16 v16, 0x0

    .line 117
    move-object v10, v15

    .line 118
    move-object v6, v15

    .line 119
    move-object/from16 v15, v16

    .line 121
    invoke-direct/range {v10 .. v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 127
    move-result v0

    .line 128
    const/16 v10, 0x21

    .line 130
    invoke-virtual {v9, v6, v5, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 133
    goto :goto_8b

    .line 134
    :cond_85
    iget v0, v1, Landroidx/appcompat/widget/s0;->s:I

    .line 136
    invoke-static {v2, v0}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    :goto_8b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_9e

    .line 146
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 148
    if-eqz v0, :cond_aa

    .line 150
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 158
    goto :goto_aa

    .line 159
    :cond_9e
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 161
    if-eqz v0, :cond_aa

    .line 163
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 166
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 171
    :cond_aa
    :goto_aa
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->b:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_bb

    .line 182
    const/16 v6, 0x8

    .line 184
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    goto :goto_be

    .line 188
    :cond_bb
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_be
    :goto_be
    iget-object v6, v3, Landroidx/appcompat/widget/s0$a;->c:Landroid/widget/ImageView;

    .line 193
    if-eqz v6, :cond_16f

    .line 195
    iget v0, v1, Landroidx/appcompat/widget/s0;->w:I

    .line 197
    const/4 v9, -0x1

    .line 198
    if-ne v0, v9, :cond_ca

    .line 200
    const/4 v0, 0x0

    .line 201
    goto/16 :goto_15c

    .line 203
    :cond_ca
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/s0;->g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_d6

    .line 213
    goto/16 :goto_15c

    .line 215
    :cond_d6
    iget-object v0, v1, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    .line 217
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 224
    move-result-object v9

    .line 225
    iget-object v10, v1, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 227
    invoke-virtual {v10, v9}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_ff

    .line 233
    iget-object v0, v1, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 235
    invoke-virtual {v0, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 241
    if-nez v0, :cond_f4

    .line 243
    const/4 v0, 0x0

    .line 244
    goto :goto_14f

    .line 245
    :cond_f4
    iget-object v9, v1, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 247
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    move-result-object v9

    .line 251
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 254
    move-result-object v0

    .line 255
    goto :goto_14f

    .line 256
    :cond_ff
    const-string v10, "SuggestionsAdapter"

    .line 258
    iget-object v11, v1, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 260
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 263
    move-result-object v11

    .line 264
    const/16 v12, 0x80

    .line 266
    :try_start_109
    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 269
    move-result-object v12
    :try_end_10d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_109 .. :try_end_10d} :catch_137

    .line 270
    invoke-virtual {v12}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    .line 273
    move-result v13

    .line 274
    if-nez v13, :cond_114

    .line 276
    goto :goto_140

    .line 277
    :cond_114
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 280
    move-result-object v14

    .line 281
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 283
    invoke-virtual {v11, v14, v13, v12}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 286
    move-result-object v11

    .line 287
    if-nez v11, :cond_141

    .line 289
    const-string v11, "Invalid icon resource "

    .line 291
    const-string v12, " for "

    .line 293
    invoke-static {v11, v13, v12}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    move-result-object v11

    .line 297
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    goto :goto_140

    .line 312
    :catch_137
    move-exception v0

    .line 313
    move-object v11, v0

    .line 314
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_140
    const/4 v11, 0x0

    .line 322
    :cond_141
    if-nez v11, :cond_145

    .line 324
    const/4 v0, 0x0

    .line 325
    goto :goto_149

    .line 326
    :cond_145
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 329
    move-result-object v0

    .line 330
    :goto_149
    iget-object v10, v1, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 332
    invoke-virtual {v10, v9, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    move-object v0, v11

    .line 336
    :goto_14f
    if-eqz v0, :cond_152

    .line 338
    goto :goto_15c

    .line 339
    :cond_152
    iget-object v0, v1, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 341
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 348
    move-result-object v0

    .line 349
    :goto_15c
    const/4 v9, 0x4

    .line 350
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    if-nez v0, :cond_166

    .line 355
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    goto :goto_16f

    .line 359
    :cond_166
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    invoke-virtual {v0, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 365
    invoke-virtual {v0, v8, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 368
    :cond_16f
    :goto_16f
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->d:Landroid/widget/ImageView;

    .line 370
    if-eqz v0, :cond_196

    .line 372
    iget v6, v1, Landroidx/appcompat/widget/s0;->x:I

    .line 374
    const/4 v9, -0x1

    .line 375
    if-ne v6, v9, :cond_17a

    .line 377
    const/4 v2, 0x0

    .line 378
    goto :goto_182

    .line 379
    :cond_17a
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/s0;->g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 386
    move-result-object v2

    .line 387
    :goto_182
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    if-nez v2, :cond_18d

    .line 392
    const/16 v6, 0x8

    .line 394
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    goto :goto_196

    .line 398
    :cond_18d
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-virtual {v2, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 404
    invoke-virtual {v2, v8, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 407
    :cond_196
    :goto_196
    iget v0, v1, Landroidx/appcompat/widget/s0;->p:I

    .line 409
    if-eq v0, v7, :cond_1a9

    .line 411
    if-ne v0, v8, :cond_1a1

    .line 413
    and-int/lit8 v0, v4, 0x1

    .line 415
    if-eqz v0, :cond_1a1

    .line 417
    goto :goto_1a9

    .line 418
    :cond_1a1
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->e:Landroid/widget/ImageView;

    .line 420
    const/16 v2, 0x8

    .line 422
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    goto :goto_1be

    .line 426
    :cond_1a9
    :goto_1a9
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->e:Landroid/widget/ImageView;

    .line 428
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->e:Landroid/widget/ImageView;

    .line 433
    iget-object v2, v3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 435
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 442
    iget-object v0, v3, Landroidx/appcompat/widget/s0$a;->e:Landroid/widget/ImageView;

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :goto_1be
    return-void
.end method

.method public final c(Landroid/database/Cursor;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lq0/a;->c(Landroid/database/Cursor;)V

    .line 4
    if-eqz p1, :cond_3e

    .line 6
    const-string v0, "suggest_text_1"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Landroidx/appcompat/widget/s0;->r:I

    .line 14
    const-string v0, "suggest_text_2"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroidx/appcompat/widget/s0;->s:I

    .line 22
    const-string v0, "suggest_text_2_url"

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Landroidx/appcompat/widget/s0;->v:I

    .line 30
    const-string v0, "suggest_icon_1"

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    iput v0, p0, Landroidx/appcompat/widget/s0;->w:I

    .line 38
    const-string v0, "suggest_icon_2"

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroidx/appcompat/widget/s0;->x:I

    .line 46
    const-string v0, "suggest_flags"

    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    move-result p1

    .line 52
    iput p1, p0, Landroidx/appcompat/widget/s0;->y:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 54
    goto :goto_3e

    .line 55
    :catch_36
    move-exception p1

    .line 56
    const-string v0, "SuggestionsAdapter"

    .line 58
    const-string v1, "error changing cursor and caching columns"

    .line 60
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method

.method public final d(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const-string v1, "suggest_intent_query"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 10
    move-result v1

    .line 11
    invoke-static {p1, v1}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    return-object v1

    .line 18
    :cond_11
    iget-object v1, p0, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    .line 20
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_26

    .line 26
    const-string v1, "suggest_intent_data"

    .line 28
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 32
    invoke-static {p1, v1}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_26

    .line 38
    return-object v1

    .line 39
    :cond_26
    iget-object v1, p0, Landroidx/appcompat/widget/s0;->l:Landroid/app/SearchableInfo;

    .line 41
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3b

    .line 47
    const-string v1, "suggest_text_1"

    .line 49
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    invoke-static {p1, v1}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3b

    .line 59
    return-object p1

    .line 60
    :cond_3b
    return-object v0
.end method

.method public final e(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lq0/c;->j:Landroid/view/LayoutInflater;

    .line 3
    iget v1, p0, Lq0/c;->h:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Landroidx/appcompat/widget/s0$a;

    .line 12
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/s0$a;-><init>(Landroid/view/View;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    sget v0, Lh/f;->edit_query:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    iget v1, p0, Landroidx/appcompat/widget/s0;->o:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    return-object p1
.end method

.method public final f(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_83

    .line 11
    :try_start_a
    iget-object v1, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 20
    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_77

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_6b

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v3, v5, :cond_39

    .line 35
    :try_start_22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_4c

    .line 46
    :catch_2d
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 48
    const-string v1, "Single path segment is not a resource ID: "

    .line 50
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0

    .line 58
    :cond_39
    const/4 v6, 0x2

    .line 59
    if-ne v3, v6, :cond_5f

    .line 61
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 67
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-result v0

    .line 77
    :goto_4c
    if-eqz v0, :cond_53

    .line 79
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_53
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 86
    const-string v1, "No resource found for: "

    .line 88
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    :cond_5f
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 98
    const-string v1, "More than two path segments: "

    .line 100
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0

    .line 108
    :cond_6b
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 110
    const-string v1, "No path: "

    .line 112
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 119
    throw v0

    .line 120
    :catch_77
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 122
    const-string v1, "No package found for authority: "

    .line 124
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v0

    .line 132
    :cond_83
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 134
    const-string v1, "No authority: "

    .line 136
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v0
.end method

.method public final g(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 1
    const-string v0, "SuggestionsAdapter"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_13a

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_13a

    .line 12
    const-string v2, "0"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_15

    .line 20
    goto/16 :goto_13a

    .line 22
    :cond_15
    :try_start_15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v4, "android.resource://"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v4, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "/"

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 59
    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 65
    if-nez v4, :cond_44

    .line 67
    move-object v4, v1

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 72
    move-result-object v4

    .line 73
    :goto_48
    if-eqz v4, :cond_4b

    .line 75
    return-object v4

    .line 76
    :cond_4b
    iget-object v4, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 78
    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_5c

    .line 84
    iget-object v4, p0, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 86
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_5c} :catch_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_5c} :catch_5d

    .line 93
    :cond_5c
    return-object v2

    .line 94
    :catch_5d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v3, "Icon resource not found: "

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v1

    .line 115
    :catch_72
    iget-object v2, p0, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 117
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 123
    if-nez v2, :cond_7e

    .line 125
    move-object v2, v1

    .line 126
    goto :goto_82

    .line 127
    :cond_7e
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 130
    move-result-object v2

    .line 131
    :goto_82
    if-eqz v2, :cond_85

    .line 133
    return-object v2

    .line 134
    :cond_85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 137
    move-result-object v2

    .line 138
    const-string v3, "Error closing icon stream for "

    .line 140
    :try_start_8b
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 144
    const-string v5, "android.resource"

    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v4
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_95} :catch_10e

    .line 150
    if-eqz v4, :cond_b5

    .line 152
    :try_start_97
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/s0;->f(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    .line 155
    move-result-object v0
    :try_end_9b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_97 .. :try_end_9b} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9b} :catch_10e

    .line 156
    move-object v1, v0

    .line 157
    goto/16 :goto_12f

    .line 159
    :catch_9e
    :try_start_9e
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v5, "Resource does not exist: "

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v4

    .line 178
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 181
    throw v3

    .line 182
    :cond_b5
    iget-object v4, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 191
    move-result-object v4
    :try_end_bf
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_bf} :catch_10e

    .line 192
    if-eqz v4, :cond_f7

    .line 194
    :try_start_c1
    invoke-static {v4, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 197
    move-result-object v5
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_de

    .line 198
    :try_start_c5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 201
    goto :goto_dc

    .line 202
    :catch_c9
    move-exception v4

    .line 203
    :try_start_ca
    new-instance v6, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v3

    .line 218
    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_dc} :catch_10e

    .line 221
    :goto_dc
    move-object v1, v5

    .line 222
    goto :goto_12f

    .line 223
    :catchall_de
    move-exception v5

    .line 224
    :try_start_df
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3

    .line 227
    goto :goto_f6

    .line 228
    :catch_e3
    move-exception v4

    .line 229
    :try_start_e4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v3

    .line 244
    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :goto_f6
    throw v5

    .line 248
    :cond_f7
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v5, "Failed to open "

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v4

    .line 267
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 270
    throw v3
    :try_end_10e
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_10e} :catch_10e

    .line 271
    :catch_10e
    move-exception v3

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v5, "Icon not found: "

    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v2, ", "

    .line 287
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v2

    .line 301
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_12f
    if-eqz v1, :cond_13a

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/s0;->n:Ljava/util/WeakHashMap;

    .line 308
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_13a
    :goto_13a
    return-object v1
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lq0/a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    const-string p2, "SuggestionsAdapter"

    .line 9
    const-string v0, "Search suggestions cursor threw exception."

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    iget-object p2, p0, Lq0/c;->j:Landroid/view/LayoutInflater;

    .line 16
    iget v0, p0, Lq0/c;->i:I

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_27

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object p3

    .line 29
    check-cast p3, Landroidx/appcompat/widget/s0$a;

    .line 31
    iget-object p3, p3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_27
    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lq0/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    const-string p2, "SuggestionsAdapter"

    .line 9
    const-string v0, "Search suggestions cursor threw exception."

    .line 11
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/s0;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Landroidx/appcompat/widget/s0$a;

    .line 24
    iget-object p3, p3, Landroidx/appcompat/widget/s0$a;->a:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-object p2
.end method

.method public final h(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v2, Landroid/net/Uri$Builder;

    .line 14
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 17
    const-string v3, "content"

    .line 19
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, ""

    .line 29
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2d

    .line 43
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    :cond_2d
    const-string v2, "search_suggest_query"

    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    if-eqz v6, :cond_3f

    .line 57
    const/4 p1, 0x1

    .line 58
    new-array v0, p1, [Ljava/lang/String;

    .line 60
    const/4 p1, 0x0

    .line 61
    aput-object p2, v0, p1

    .line 63
    goto :goto_42

    .line 64
    :cond_3f
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    :goto_42
    move-object v7, v0

    .line 68
    const/16 p1, 0x32

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string p2, "limit"

    .line 76
    invoke-virtual {v1, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 82
    move-result-object v4

    .line 83
    iget-object p1, p0, Landroidx/appcompat/widget/s0;->m:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object v3

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final notifyDataSetChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz v0, :cond_14

    .line 16
    const-string v1, "in_progress"

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    :cond_14
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 4
    iget-object v0, p0, Lq0/a;->c:Landroid/database/Cursor;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-eqz v0, :cond_14

    .line 16
    const-string v1, "in_progress"

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 21
    :cond_14
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/CharSequence;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/s0;->k:Landroidx/appcompat/widget/SearchView;

    .line 11
    check-cast p1, Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->h(Ljava/lang/CharSequence;)V

    .line 16
    :cond_f
    return-void
.end method
