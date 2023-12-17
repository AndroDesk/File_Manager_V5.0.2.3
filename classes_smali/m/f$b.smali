.class public final Lm/f$b;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lm/f;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Lm0/b;


# direct methods
.method public constructor <init>(Lm/f;Landroid/view/Menu;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lm/f$b;->E:Lm/f;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    .line 9
    iput-object p1, p0, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iput-object p2, p0, Lm/f$b;->a:Landroid/view/Menu;

    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lm/f$b;->b:I

    .line 16
    iput p1, p0, Lm/f$b;->c:I

    .line 18
    iput p1, p0, Lm/f$b;->d:I

    .line 20
    iput p1, p0, Lm/f$b;->e:I

    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lm/f$b;->f:Z

    .line 25
    iput-boolean p1, p0, Lm/f$b;->g:Z

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lm/f$b;->E:Lm/f;

    .line 4
    iget-object v1, v1, Lm/f;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 26
    return-object p1

    .line 27
    :catch_1a
    move-exception p2

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v0, "Cannot instantiate class: "

    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p3, "SupportMenuInflater"

    .line 47
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lm/f$b;->s:Z

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lm/f$b;->t:Z

    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lm/f$b;->u:Z

    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lm/f$b;->r:I

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_1a

    .line 25
    move v1, v3

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v2

    .line 28
    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lm/f$b;->l:Ljava/lang/CharSequence;

    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lm/f$b;->m:I

    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 43
    iget v0, p0, Lm/f$b;->v:I

    .line 45
    if-ltz v0, :cond_31

    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 50
    :cond_31
    iget-object v0, p0, Lm/f$b;->y:Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_58

    .line 54
    iget-object v0, p0, Lm/f$b;->E:Lm/f;

    .line 56
    iget-object v0, v0, Lm/f;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_50

    .line 64
    new-instance v0, Lm/f$a;

    .line 66
    iget-object v1, p0, Lm/f$b;->E:Lm/f;

    .line 68
    invoke-virtual {v1}, Lm/f;->getRealOwner()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    iget-object v4, p0, Lm/f$b;->y:Ljava/lang/String;

    .line 74
    invoke-direct {v0, v1, v4}, Lm/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 80
    goto :goto_58

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p1

    .line 89
    :cond_58
    :goto_58
    iget v0, p0, Lm/f$b;->r:I

    .line 91
    const/4 v1, 0x2

    .line 92
    if-lt v0, v1, :cond_9d

    .line 94
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    .line 96
    if-eqz v0, :cond_68

    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Landroidx/appcompat/view/menu/j;

    .line 101
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/j;->d(Z)V

    .line 104
    goto :goto_9d

    .line 105
    :cond_68
    instance-of v0, p1, Landroidx/appcompat/view/menu/k;

    .line 107
    if-eqz v0, :cond_9d

    .line 109
    move-object v0, p1

    .line 110
    check-cast v0, Landroidx/appcompat/view/menu/k;

    .line 112
    :try_start_6f
    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    .line 114
    if-nez v1, :cond_87

    .line 116
    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    move-result-object v1

    .line 122
    const-string v4, "setExclusiveCheckable"

    .line 124
    new-array v5, v3, [Ljava/lang/Class;

    .line 126
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 128
    aput-object v6, v5, v2

    .line 130
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    move-result-object v1

    .line 134
    iput-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    .line 136
    :cond_87
    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    .line 138
    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    .line 140
    new-array v4, v3, [Ljava/lang/Object;

    .line 142
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 144
    aput-object v5, v4, v2

    .line 146
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_94} :catch_95

    .line 149
    goto :goto_9d

    .line 150
    :catch_95
    move-exception v0

    .line 151
    const-string v1, "MenuItemWrapper"

    .line 153
    const-string v4, "Error while calling setExclusiveCheckable"

    .line 155
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lm/f$b;->x:Ljava/lang/String;

    .line 160
    if-eqz v0, :cond_b1

    .line 162
    sget-object v1, Lm/f;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 164
    iget-object v2, p0, Lm/f$b;->E:Lm/f;

    .line 166
    iget-object v2, v2, Lm/f;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, v0, v1, v2}, Lm/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/view/View;

    .line 174
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 177
    move v2, v3

    .line 178
    :cond_b1
    iget v0, p0, Lm/f$b;->w:I

    .line 180
    if-lez v0, :cond_c2

    .line 182
    if-nez v2, :cond_bb

    .line 184
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 187
    goto :goto_c2

    .line 188
    :cond_bb
    const-string v0, "SupportMenuInflater"

    .line 190
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lm/f$b;->z:Lm0/b;

    .line 197
    if-eqz v0, :cond_d8

    .line 199
    instance-of v1, p1, Lh0/b;

    .line 201
    if-eqz v1, :cond_d1

    .line 203
    move-object v1, p1

    .line 204
    check-cast v1, Lh0/b;

    .line 206
    invoke-interface {v1, v0}, Lh0/b;->setSupportActionProvider(Lm0/b;)Lh0/b;

    .line 209
    goto :goto_d8

    .line 210
    :cond_d1
    const-string v0, "MenuItemCompat"

    .line 212
    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d8
    :goto_d8
    iget-object v0, p0, Lm/f$b;->A:Ljava/lang/CharSequence;

    .line 219
    instance-of v1, p1, Lh0/b;

    .line 221
    const/16 v2, 0x1a

    .line 223
    if-eqz v1, :cond_e7

    .line 225
    move-object v3, p1

    .line 226
    check-cast v3, Lh0/b;

    .line 228
    invoke-interface {v3, v0}, Lh0/b;->setContentDescription(Ljava/lang/CharSequence;)Lh0/b;

    .line 231
    goto :goto_ee

    .line 232
    :cond_e7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 234
    if-lt v3, v2, :cond_ee

    .line 236
    invoke-static {p1, v0}, Lm0/n;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 239
    :cond_ee
    :goto_ee
    iget-object v0, p0, Lm/f$b;->B:Ljava/lang/CharSequence;

    .line 241
    if-eqz v1, :cond_f9

    .line 243
    move-object v3, p1

    .line 244
    check-cast v3, Lh0/b;

    .line 246
    invoke-interface {v3, v0}, Lh0/b;->setTooltipText(Ljava/lang/CharSequence;)Lh0/b;

    .line 249
    goto :goto_100

    .line 250
    :cond_f9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 252
    if-lt v3, v2, :cond_100

    .line 254
    invoke-static {p1, v0}, Lm0/n;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 257
    :cond_100
    :goto_100
    iget-char v0, p0, Lm/f$b;->n:C

    .line 259
    iget v3, p0, Lm/f$b;->o:I

    .line 261
    if-eqz v1, :cond_10d

    .line 263
    move-object v4, p1

    .line 264
    check-cast v4, Lh0/b;

    .line 266
    invoke-interface {v4, v0, v3}, Lh0/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 269
    goto :goto_114

    .line 270
    :cond_10d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    if-lt v4, v2, :cond_114

    .line 274
    invoke-static {p1, v0, v3}, Lm0/n;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 277
    :cond_114
    :goto_114
    iget-char v0, p0, Lm/f$b;->p:C

    .line 279
    iget v3, p0, Lm/f$b;->q:I

    .line 281
    if-eqz v1, :cond_121

    .line 283
    move-object v4, p1

    .line 284
    check-cast v4, Lh0/b;

    .line 286
    invoke-interface {v4, v0, v3}, Lh0/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 289
    goto :goto_128

    .line 290
    :cond_121
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    if-lt v4, v2, :cond_128

    .line 294
    invoke-static {p1, v0, v3}, Lm0/n;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 297
    :cond_128
    :goto_128
    iget-object v0, p0, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    .line 299
    if-eqz v0, :cond_13c

    .line 301
    if-eqz v1, :cond_135

    .line 303
    move-object v3, p1

    .line 304
    check-cast v3, Lh0/b;

    .line 306
    invoke-interface {v3, v0}, Lh0/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 309
    goto :goto_13c

    .line 310
    :cond_135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 312
    if-lt v3, v2, :cond_13c

    .line 314
    invoke-static {p1, v0}, Lm0/n;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 317
    :cond_13c
    :goto_13c
    iget-object v0, p0, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    .line 319
    if-eqz v0, :cond_14f

    .line 321
    if-eqz v1, :cond_148

    .line 323
    check-cast p1, Lh0/b;

    .line 325
    invoke-interface {p1, v0}, Lh0/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 328
    goto :goto_14f

    .line 329
    :cond_148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 331
    if-lt v1, v2, :cond_14f

    .line 333
    invoke-static {p1, v0}, Lm0/n;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 336
    :cond_14f
    :goto_14f
    return-void
.end method
