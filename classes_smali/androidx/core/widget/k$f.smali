.class public final Landroidx/core/widget/k$f;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/widget/TextView;

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/reflect/Method;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 6
    iput-object p2, p0, Landroidx/core/widget/k$f;->b:Landroid/widget/TextView;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/core/widget/k$f;->f:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 15

    .line 1
    iget-object v0, p0, Landroidx/core/widget/k$f;->b:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    iget-boolean v2, p0, Landroidx/core/widget/k$f;->f:Z

    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "removeItemAt"

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v2, :cond_32

    .line 19
    iput-boolean v3, p0, Landroidx/core/widget/k$f;->f:Z

    .line 21
    :try_start_14
    const-string v2, "com.android.internal.view.menu.MenuBuilder"

    .line 23
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Landroidx/core/widget/k$f;->c:Ljava/lang/Class;

    .line 29
    new-array v6, v3, [Ljava/lang/Class;

    .line 31
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 33
    aput-object v7, v6, v5

    .line 35
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Landroidx/core/widget/k$f;->d:Ljava/lang/reflect/Method;

    .line 41
    iput-boolean v3, p0, Landroidx/core/widget/k$f;->e:Z
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_32

    .line 44
    :catch_2b
    const/4 v2, 0x0

    .line 45
    iput-object v2, p0, Landroidx/core/widget/k$f;->c:Ljava/lang/Class;

    .line 47
    iput-object v2, p0, Landroidx/core/widget/k$f;->d:Ljava/lang/reflect/Method;

    .line 49
    iput-boolean v5, p0, Landroidx/core/widget/k$f;->e:Z

    .line 51
    :cond_32
    :goto_32
    :try_start_32
    iget-boolean v2, p0, Landroidx/core/widget/k$f;->e:Z

    .line 53
    if-eqz v2, :cond_41

    .line 55
    iget-object v2, p0, Landroidx/core/widget/k$f;->c:Ljava/lang/Class;

    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_41

    .line 63
    iget-object v2, p0, Landroidx/core/widget/k$f;->d:Ljava/lang/reflect/Method;

    .line 65
    goto :goto_4f

    .line 66
    :cond_41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    move-result-object v2

    .line 70
    new-array v6, v3, [Ljava/lang/Class;

    .line 72
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 74
    aput-object v7, v6, v5

    .line 76
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    move-result-object v2

    .line 80
    :goto_4f
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    .line 83
    move-result v4
    :try_end_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_53} :catch_129
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_53} :catch_129
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_53} :catch_129

    .line 84
    sub-int/2addr v4, v3

    .line 85
    :goto_54
    const-string v6, "android.intent.action.PROCESS_TEXT"

    .line 87
    if-ltz v4, :cond_7e

    .line 89
    :try_start_58
    invoke-interface {p2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v7}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 96
    move-result-object v8

    .line 97
    if-eqz v8, :cond_7b

    .line 99
    invoke-interface {v7}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_7b

    .line 113
    new-array v6, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v7

    .line 119
    aput-object v7, v6, v5

    .line 121
    invoke-virtual {v2, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_7b} :catch_129
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_7b} :catch_129
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_58 .. :try_end_7b} :catch_129

    .line 124
    :cond_7b
    add-int/lit8 v4, v4, -0x1

    .line 126
    goto :goto_54

    .line 127
    :cond_7e
    new-instance v2, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    instance-of v4, v0, Landroid/app/Activity;

    .line 134
    const-string v7, "text/plain"

    .line 136
    if-nez v4, :cond_8a

    .line 138
    goto :goto_d5

    .line 139
    :cond_8a
    new-instance v4, Landroid/content/Intent;

    .line 141
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 144
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 155
    move-result-object v4

    .line 156
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v4

    .line 160
    :cond_9f
    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_d5

    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v8

    .line 170
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 175
    move-result-object v9

    .line 176
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 178
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_ba

    .line 186
    goto :goto_ce

    .line 187
    :cond_ba
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 189
    iget-boolean v10, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 191
    if-nez v10, :cond_c1

    .line 193
    goto :goto_cc

    .line 194
    :cond_c1
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 196
    if-eqz v9, :cond_ce

    .line 198
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 201
    move-result v9

    .line 202
    if-nez v9, :cond_cc

    .line 204
    goto :goto_ce

    .line 205
    :cond_cc
    :goto_cc
    move v9, v5

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    :goto_ce
    move v9, v3

    .line 208
    :goto_cf
    if-eqz v9, :cond_9f

    .line 210
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    goto :goto_9f

    .line 214
    :cond_d5
    :goto_d5
    move v0, v5

    .line 215
    :goto_d6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 218
    move-result v4

    .line 219
    if-ge v0, v4, :cond_129

    .line 221
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 227
    add-int/lit8 v8, v0, 0x64

    .line 229
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 232
    move-result-object v9

    .line 233
    invoke-interface {p2, v5, v5, v8, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 236
    move-result-object v8

    .line 237
    iget-object v9, p0, Landroidx/core/widget/k$f;->b:Landroid/widget/TextView;

    .line 239
    new-instance v10, Landroid/content/Intent;

    .line 241
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 244
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    move-result-object v10

    .line 248
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    move-result-object v10

    .line 252
    instance-of v11, v9, Landroid/text/Editable;

    .line 254
    if-eqz v11, :cond_10d

    .line 256
    invoke-virtual {v9}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_10d

    .line 262
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    .line 265
    move-result v9

    .line 266
    if-eqz v9, :cond_10d

    .line 268
    move v9, v3

    .line 269
    goto :goto_10e

    .line 270
    :cond_10d
    move v9, v5

    .line 271
    :goto_10e
    xor-int/2addr v9, v3

    .line 272
    const-string v11, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 274
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    move-result-object v9

    .line 278
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 280
    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 282
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 284
    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    move-result-object v4

    .line 288
    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 291
    move-result-object v4

    .line 292
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 297
    goto :goto_d6

    .line 298
    :catch_129
    :cond_129
    iget-object v0, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 300
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 303
    move-result p1

    .line 304
    return p1
.end method
