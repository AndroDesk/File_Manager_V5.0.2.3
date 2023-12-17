.class public Landroidx/appcompat/app/f$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final P:Landroidx/appcompat/app/AlertController$b;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/appcompat/app/f;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/f$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Landroidx/appcompat/app/f;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput p2, p0, Landroidx/appcompat/app/f$a;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/f;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Landroidx/appcompat/app/f;

    .line 5
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 7
    iget-object v2, v2, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 9
    iget v3, v0, Landroidx/appcompat/app/f$a;->mTheme:I

    .line 11
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;I)V

    .line 14
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 16
    iget-object v3, v1, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 18
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->f:Landroid/view/View;

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    if-eqz v4, :cond_1a

    .line 24
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    .line 26
    goto :goto_59

    .line 27
    :cond_1a
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 29
    if-eqz v4, :cond_27

    .line 31
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 33
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 35
    if-eqz v5, :cond_27

    .line 37
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_27
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    if-eqz v4, :cond_3b

    .line 44
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 46
    iput v11, v3, Landroidx/appcompat/app/AlertController;->B:I

    .line 48
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 50
    if-eqz v5, :cond_3b

    .line 52
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_3b
    iget v4, v2, Landroidx/appcompat/app/AlertController$b;->c:I

    .line 62
    if-eqz v4, :cond_59

    .line 64
    iput-object v10, v3, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 66
    iput v4, v3, Landroidx/appcompat/app/AlertController;->B:I

    .line 68
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 70
    if-eqz v5, :cond_59

    .line 72
    if-eqz v4, :cond_54

    .line 74
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v4, v3, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 79
    iget v5, v3, Landroidx/appcompat/app/AlertController;->B:I

    .line 81
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    goto :goto_59

    .line 85
    :cond_54
    const/16 v4, 0x8

    .line 87
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_59
    :goto_59
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 92
    if-eqz v4, :cond_66

    .line 94
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 96
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    .line 98
    if-eqz v5, :cond_66

    .line 100
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_66
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 105
    if-nez v4, :cond_6e

    .line 107
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$b;->i:Landroid/graphics/drawable/Drawable;

    .line 109
    if-eqz v5, :cond_76

    .line 111
    :cond_6e
    const/4 v5, -0x1

    .line 112
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    iget-object v7, v2, Landroidx/appcompat/app/AlertController$b;->i:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {v3, v5, v4, v6, v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_76
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 121
    if-nez v4, :cond_7e

    .line 123
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$b;->l:Landroid/graphics/drawable/Drawable;

    .line 125
    if-eqz v5, :cond_86

    .line 127
    :cond_7e
    const/4 v5, -0x2

    .line 128
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    iget-object v7, v2, Landroidx/appcompat/app/AlertController$b;->l:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {v3, v5, v4, v6, v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_86
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->n:Ljava/lang/CharSequence;

    .line 137
    if-nez v4, :cond_8e

    .line 139
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$b;->o:Landroid/graphics/drawable/Drawable;

    .line 141
    if-eqz v5, :cond_96

    .line 143
    :cond_8e
    const/4 v5, -0x3

    .line 144
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    iget-object v7, v2, Landroidx/appcompat/app/AlertController$b;->o:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {v3, v5, v4, v6, v7}, Landroidx/appcompat/app/AlertController;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_96
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 153
    const/4 v12, 0x1

    .line 154
    if-nez v4, :cond_a3

    .line 156
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 158
    if-nez v4, :cond_a3

    .line 160
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->v:Landroid/widget/ListAdapter;

    .line 162
    if-eqz v4, :cond_146

    .line 164
    :cond_a3
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    .line 166
    iget v5, v3, Landroidx/appcompat/app/AlertController;->L:I

    .line 168
    invoke-virtual {v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    move-result-object v4

    .line 172
    move-object v13, v4

    .line 173
    check-cast v13, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 175
    iget-boolean v4, v2, Landroidx/appcompat/app/AlertController$b;->F:Z

    .line 177
    if-eqz v4, :cond_d3

    .line 179
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 181
    if-nez v4, :cond_c5

    .line 183
    new-instance v14, Landroidx/appcompat/app/b;

    .line 185
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 187
    iget v7, v3, Landroidx/appcompat/app/AlertController;->M:I

    .line 189
    iget-object v8, v2, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 191
    move-object v4, v14

    .line 192
    move-object v5, v2

    .line 193
    move-object v9, v13

    .line 194
    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/app/b;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 197
    goto :goto_10e

    .line 198
    :cond_c5
    new-instance v14, Landroidx/appcompat/app/c;

    .line 200
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 202
    iget-object v7, v2, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 204
    move-object v4, v14

    .line 205
    move-object v5, v2

    .line 206
    move-object v8, v13

    .line 207
    move-object v9, v3

    .line 208
    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/app/c;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;Landroid/database/Cursor;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 211
    goto :goto_10e

    .line 212
    :cond_d3
    iget-boolean v4, v2, Landroidx/appcompat/app/AlertController$b;->G:Z

    .line 214
    if-eqz v4, :cond_da

    .line 216
    iget v4, v3, Landroidx/appcompat/app/AlertController;->N:I

    .line 218
    goto :goto_dc

    .line 219
    :cond_da
    iget v4, v3, Landroidx/appcompat/app/AlertController;->O:I

    .line 221
    :goto_dc
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 223
    const v6, 0x1020014

    .line 226
    if-eqz v5, :cond_100

    .line 228
    new-instance v5, Landroid/widget/SimpleCursorAdapter;

    .line 230
    iget-object v15, v2, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 232
    iget-object v7, v2, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 234
    new-array v8, v12, [Ljava/lang/String;

    .line 236
    iget-object v9, v2, Landroidx/appcompat/app/AlertController$b;->K:Ljava/lang/String;

    .line 238
    aput-object v9, v8, v11

    .line 240
    new-array v9, v12, [I

    .line 242
    aput v6, v9, v11

    .line 244
    move-object v14, v5

    .line 245
    move/from16 v16, v4

    .line 247
    move-object/from16 v17, v7

    .line 249
    move-object/from16 v18, v8

    .line 251
    move-object/from16 v19, v9

    .line 253
    invoke-direct/range {v14 .. v19}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 256
    goto :goto_10e

    .line 257
    :cond_100
    iget-object v14, v2, Landroidx/appcompat/app/AlertController$b;->v:Landroid/widget/ListAdapter;

    .line 259
    if-eqz v14, :cond_105

    .line 261
    goto :goto_10e

    .line 262
    :cond_105
    new-instance v14, Landroidx/appcompat/app/AlertController$d;

    .line 264
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 266
    iget-object v6, v2, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 268
    invoke-direct {v14, v5, v4, v6}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 271
    :goto_10e
    iput-object v14, v3, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 273
    iget v4, v2, Landroidx/appcompat/app/AlertController$b;->H:I

    .line 275
    iput v4, v3, Landroidx/appcompat/app/AlertController;->I:I

    .line 277
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 279
    if-eqz v4, :cond_121

    .line 281
    new-instance v4, Landroidx/appcompat/app/d;

    .line 283
    invoke-direct {v4, v2, v3}, Landroidx/appcompat/app/d;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    .line 286
    invoke-virtual {v13, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    goto :goto_12d

    .line 290
    :cond_121
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 292
    if-eqz v4, :cond_12d

    .line 294
    new-instance v4, Landroidx/appcompat/app/e;

    .line 296
    invoke-direct {v4, v2, v13, v3}, Landroidx/appcompat/app/e;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 299
    invoke-virtual {v13, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    :cond_12d
    :goto_12d
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 304
    if-eqz v4, :cond_134

    .line 306
    invoke-virtual {v13, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    :cond_134
    iget-boolean v4, v2, Landroidx/appcompat/app/AlertController$b;->G:Z

    .line 311
    if-eqz v4, :cond_13c

    .line 313
    invoke-virtual {v13, v12}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 316
    goto :goto_144

    .line 317
    :cond_13c
    iget-boolean v4, v2, Landroidx/appcompat/app/AlertController$b;->F:Z

    .line 319
    if-eqz v4, :cond_144

    .line 321
    const/4 v4, 0x2

    .line 322
    invoke-virtual {v13, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 325
    :cond_144
    :goto_144
    iput-object v13, v3, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 327
    :cond_146
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$b;->y:Landroid/view/View;

    .line 329
    if-eqz v4, :cond_16c

    .line 331
    iget-boolean v5, v2, Landroidx/appcompat/app/AlertController$b;->D:Z

    .line 333
    if-eqz v5, :cond_165

    .line 335
    iget v5, v2, Landroidx/appcompat/app/AlertController$b;->z:I

    .line 337
    iget v6, v2, Landroidx/appcompat/app/AlertController$b;->A:I

    .line 339
    iget v7, v2, Landroidx/appcompat/app/AlertController$b;->B:I

    .line 341
    iget v2, v2, Landroidx/appcompat/app/AlertController$b;->C:I

    .line 343
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 345
    iput v11, v3, Landroidx/appcompat/app/AlertController;->i:I

    .line 347
    iput-boolean v12, v3, Landroidx/appcompat/app/AlertController;->n:Z

    .line 349
    iput v5, v3, Landroidx/appcompat/app/AlertController;->j:I

    .line 351
    iput v6, v3, Landroidx/appcompat/app/AlertController;->k:I

    .line 353
    iput v7, v3, Landroidx/appcompat/app/AlertController;->l:I

    .line 355
    iput v2, v3, Landroidx/appcompat/app/AlertController;->m:I

    .line 357
    goto :goto_176

    .line 358
    :cond_165
    iput-object v4, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 360
    iput v11, v3, Landroidx/appcompat/app/AlertController;->i:I

    .line 362
    iput-boolean v11, v3, Landroidx/appcompat/app/AlertController;->n:Z

    .line 364
    goto :goto_176

    .line 365
    :cond_16c
    iget v2, v2, Landroidx/appcompat/app/AlertController$b;->x:I

    .line 367
    if-eqz v2, :cond_176

    .line 369
    iput-object v10, v3, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 371
    iput v2, v3, Landroidx/appcompat/app/AlertController;->i:I

    .line 373
    iput-boolean v11, v3, Landroidx/appcompat/app/AlertController;->n:Z

    .line 375
    :cond_176
    :goto_176
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 377
    iget-boolean v2, v2, Landroidx/appcompat/app/AlertController$b;->q:Z

    .line 379
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 382
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 384
    iget-boolean v2, v2, Landroidx/appcompat/app/AlertController$b;->q:Z

    .line 386
    if-eqz v2, :cond_186

    .line 388
    invoke-virtual {v1, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 391
    :cond_186
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 393
    iget-object v2, v2, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnCancelListener;

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 398
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 400
    iget-object v2, v2, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnDismissListener;

    .line 402
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    iget-object v2, v0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 407
    iget-object v2, v2, Landroidx/appcompat/app/AlertController$b;->t:Landroid/content/DialogInterface$OnKeyListener;

    .line 409
    if-eqz v2, :cond_19d

    .line 411
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 414
    :cond_19d
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 5
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->v:Landroid/widget/ListAdapter;

    .line 5
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    return-object p0
.end method

.method public setCancelable(Z)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->q:Z

    .line 5
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 5
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->K:Ljava/lang/String;

    .line 7
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Landroid/view/View;

    .line 5
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->c:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 8
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 20
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 22
    iput v0, p1, Landroidx/appcompat/app/AlertController$b;->c:I

    .line 24
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroidx/appcompat/app/f$a;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/f$a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p3, p1, Landroidx/appcompat/app/AlertController$b;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->E:[Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Landroidx/appcompat/app/AlertController$b;->F:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/f$a;
    .registers 6

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 10
    iput-object p4, v0, Landroidx/appcompat/app/AlertController$b;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 11
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->L:Ljava/lang/String;

    .line 12
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->K:Ljava/lang/String;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->F:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 6
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 7
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->E:[Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->F:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->o:Landroid/graphics/drawable/Drawable;

    .line 5
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnCancelListener;

    .line 5
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnDismissListener;

    .line 5
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 5
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->t:Landroid/content/DialogInterface$OnKeyListener;

    .line 5
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Landroid/graphics/drawable/Drawable;

    .line 5
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroidx/appcompat/app/f$a;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p3, p1, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, p1, Landroidx/appcompat/app/AlertController$b;->H:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Landroidx/appcompat/app/AlertController$b;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 6

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->J:Landroid/database/Cursor;

    .line 6
    iput-object p4, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->H:I

    .line 8
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->K:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 14
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->v:Landroid/widget/ListAdapter;

    .line 15
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 16
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->H:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->G:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;
    .registers 5

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->u:[Ljava/lang/CharSequence;

    .line 11
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->H:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->G:Z

    return-object p0
.end method

.method public setTitle(I)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Landroidx/appcompat/app/f$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->y:Landroid/view/View;

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->x:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/f$a;
    .registers 3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->y:Landroid/view/View;

    const/4 p1, 0x0

    .line 5
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->x:I

    .line 6
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->D:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroidx/appcompat/app/f$a;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/f$a;->P:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->y:Landroid/view/View;

    const/4 p1, 0x0

    .line 8
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->x:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->D:Z

    .line 10
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->z:I

    .line 11
    iput p3, v0, Landroidx/appcompat/app/AlertController$b;->A:I

    .line 12
    iput p4, v0, Landroidx/appcompat/app/AlertController$b;->B:I

    .line 13
    iput p5, v0, Landroidx/appcompat/app/AlertController$b;->C:I

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/f;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/f$a;->create()Landroidx/appcompat/app/f;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    return-object v0
.end method
