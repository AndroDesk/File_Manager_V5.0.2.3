.class public final Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/b;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field public A:I

.field public j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public final s:Landroid/util/SparseBooleanArray;

.field public v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field public w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

.field public x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field public y:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field public final z:Landroidx/appcompat/widget/ActionMenuPresenter$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Lh/g;->abc_action_menu_layout:I

    .line 3
    sget v1, Lh/g;->abc_action_menu_item_layout:I

    .line 5
    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Landroid/util/SparseBooleanArray;

    .line 15
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    .line 17
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 20
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->c()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_3e

    .line 14
    :cond_d
    instance-of v0, p2, Landroidx/appcompat/view/menu/o$a;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    check-cast p2, Landroidx/appcompat/view/menu/o$a;

    .line 20
    goto :goto_1e

    .line 21
    :cond_14
    iget-object p2, p0, Landroidx/appcompat/view/menu/b;->d:Landroid/view/LayoutInflater;

    .line 23
    iget v0, p0, Landroidx/appcompat/view/menu/b;->g:I

    .line 25
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/appcompat/view/menu/o$a;

    .line 31
    :goto_1e
    invoke-interface {p2, p1, v1}, Landroidx/appcompat/view/menu/o$a;->initialize(Landroidx/appcompat/view/menu/j;I)V

    .line 34
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 36
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 38
    move-object v2, p2

    .line 39
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 41
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/h$b;)V

    .line 44
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 46
    if-nez v0, :cond_36

    .line 48
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 50
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 53
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 57
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    .line 60
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/view/View;

    .line 63
    :cond_3e
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/j;->C:Z

    .line 65
    if-eqz p1, :cond_44

    .line 67
    const/16 v1, 0x8

    .line 69
    :cond_44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_5a

    .line 84
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_5a
    return-object v0
.end method

.method public final b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_12

    .line 6
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 8
    if-eqz v2, :cond_12

    .line 10
    check-cast v2, Landroid/view/View;

    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 18
    return v1

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 21
    if-eqz v0, :cond_22

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_21

    .line 29
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 31
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 34
    :cond_21
    return v1

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public final d()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 3
    if-eqz v0, :cond_3b

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3b

    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 13
    if-eqz v0, :cond_3b

    .line 15
    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 17
    if-eqz v1, :cond_3b

    .line 19
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 21
    if-nez v1, :cond_3b

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3b

    .line 33
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    .line 35
    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    .line 37
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 39
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 41
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroidx/appcompat/widget/ActionMenuPresenter$d;)V

    .line 44
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 46
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    .line 49
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 51
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 53
    check-cast v0, Landroid/view/View;

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    const/4 v0, 0x1

    .line 59
    return v0

    .line 60
    :cond_3b
    const/4 v0, 0x0

    .line 61
    return v0
.end method

.method public final flagActionItems()Z
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_10

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v4

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    move v4, v3

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 21
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v7

    .line 27
    iget-object v8, v0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 29
    check-cast v8, Landroid/view/ViewGroup;

    .line 31
    move v9, v3

    .line 32
    move v10, v9

    .line 33
    move v11, v10

    .line 34
    move v12, v11

    .line 35
    :goto_22
    const/4 v13, 0x2

    .line 36
    const/4 v14, 0x1

    .line 37
    if-ge v9, v4, :cond_54

    .line 39
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v15

    .line 43
    check-cast v15, Landroidx/appcompat/view/menu/j;

    .line 45
    iget v3, v15, Landroidx/appcompat/view/menu/j;->y:I

    .line 47
    and-int/lit8 v2, v3, 0x2

    .line 49
    if-ne v2, v13, :cond_34

    .line 51
    move v2, v14

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v2, 0x0

    .line 54
    :goto_35
    if-eqz v2, :cond_3a

    .line 56
    add-int/lit8 v11, v11, 0x1

    .line 58
    goto :goto_47

    .line 59
    :cond_3a
    and-int/lit8 v2, v3, 0x1

    .line 61
    if-ne v2, v14, :cond_40

    .line 63
    move v2, v14

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v2, 0x0

    .line 66
    :goto_41
    if-eqz v2, :cond_46

    .line 68
    add-int/lit8 v12, v12, 0x1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v10, v14

    .line 72
    :goto_47
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    .line 74
    if-eqz v2, :cond_50

    .line 76
    iget-boolean v2, v15, Landroidx/appcompat/view/menu/j;->C:Z

    .line 78
    if-eqz v2, :cond_50

    .line 80
    const/4 v5, 0x0

    .line 81
    :cond_50
    add-int/lit8 v9, v9, 0x1

    .line 83
    const/4 v3, 0x0

    .line 84
    goto :goto_22

    .line 85
    :cond_54
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 87
    if-eqz v2, :cond_5f

    .line 89
    if-nez v10, :cond_5d

    .line 91
    add-int/2addr v12, v11

    .line 92
    if-le v12, v5, :cond_5f

    .line 94
    :cond_5d
    add-int/lit8 v5, v5, -0x1

    .line 96
    :cond_5f
    sub-int/2addr v5, v11

    .line 97
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Landroid/util/SparseBooleanArray;

    .line 99
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_67
    if-ge v3, v4, :cond_111

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Landroidx/appcompat/view/menu/j;

    .line 112
    iget v11, v10, Landroidx/appcompat/view/menu/j;->y:I

    .line 114
    and-int/lit8 v12, v11, 0x2

    .line 116
    if-ne v12, v13, :cond_77

    .line 118
    move v12, v14

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    const/4 v12, 0x0

    .line 121
    :goto_78
    if-eqz v12, :cond_97

    .line 123
    const/4 v12, 0x0

    .line 124
    invoke-virtual {v0, v10, v12, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    move-result-object v11

    .line 128
    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    .line 131
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 134
    move-result v11

    .line 135
    sub-int/2addr v6, v11

    .line 136
    if-nez v9, :cond_8a

    .line 138
    move v9, v11

    .line 139
    :cond_8a
    iget v11, v10, Landroidx/appcompat/view/menu/j;->b:I

    .line 141
    if-eqz v11, :cond_91

    .line 143
    invoke-virtual {v2, v11, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 146
    :cond_91
    invoke-virtual {v10, v14}, Landroidx/appcompat/view/menu/j;->e(Z)V

    .line 149
    :goto_94
    const/4 v0, 0x0

    .line 150
    goto/16 :goto_109

    .line 152
    :cond_97
    and-int/lit8 v11, v11, 0x1

    .line 154
    if-ne v11, v14, :cond_9d

    .line 156
    move v11, v14

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    const/4 v11, 0x0

    .line 159
    :goto_9e
    if-eqz v11, :cond_105

    .line 161
    iget v11, v10, Landroidx/appcompat/view/menu/j;->b:I

    .line 163
    invoke-virtual {v2, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 166
    move-result v12

    .line 167
    if-gtz v5, :cond_aa

    .line 169
    if-eqz v12, :cond_ae

    .line 171
    :cond_aa
    if-lez v6, :cond_ae

    .line 173
    move v15, v14

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    const/4 v15, 0x0

    .line 176
    :goto_af
    const/4 v13, 0x0

    .line 177
    if-eqz v15, :cond_c9

    .line 179
    invoke-virtual {v0, v10, v13, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    move-result-object v14

    .line 183
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 186
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    move-result v14

    .line 190
    sub-int/2addr v6, v14

    .line 191
    if-nez v9, :cond_c1

    .line 193
    move v9, v14

    .line 194
    :cond_c1
    add-int v14, v6, v9

    .line 196
    if-lez v14, :cond_c7

    .line 198
    const/4 v14, 0x1

    .line 199
    goto :goto_c8

    .line 200
    :cond_c7
    const/4 v14, 0x0

    .line 201
    :goto_c8
    and-int/2addr v15, v14

    .line 202
    :cond_c9
    if-eqz v15, :cond_d2

    .line 204
    if-eqz v11, :cond_d2

    .line 206
    const/4 v14, 0x1

    .line 207
    invoke-virtual {v2, v11, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 210
    goto :goto_fd

    .line 211
    :cond_d2
    if-eqz v12, :cond_fd

    .line 213
    const/4 v12, 0x0

    .line 214
    invoke-virtual {v2, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 217
    const/4 v12, 0x0

    .line 218
    :goto_d9
    if-ge v12, v3, :cond_fd

    .line 220
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v14

    .line 224
    check-cast v14, Landroidx/appcompat/view/menu/j;

    .line 226
    iget v13, v14, Landroidx/appcompat/view/menu/j;->b:I

    .line 228
    if-ne v13, v11, :cond_f7

    .line 230
    iget v13, v14, Landroidx/appcompat/view/menu/j;->x:I

    .line 232
    const/16 v0, 0x20

    .line 234
    and-int/2addr v13, v0

    .line 235
    if-ne v13, v0, :cond_ee

    .line 237
    const/4 v0, 0x1

    .line 238
    goto :goto_ef

    .line 239
    :cond_ee
    const/4 v0, 0x0

    .line 240
    :goto_ef
    if-eqz v0, :cond_f3

    .line 242
    add-int/lit8 v5, v5, 0x1

    .line 244
    :cond_f3
    const/4 v0, 0x0

    .line 245
    invoke-virtual {v14, v0}, Landroidx/appcompat/view/menu/j;->e(Z)V

    .line 248
    :cond_f7
    add-int/lit8 v12, v12, 0x1

    .line 250
    const/4 v13, 0x0

    .line 251
    move-object/from16 v0, p0

    .line 253
    goto :goto_d9

    .line 254
    :cond_fd
    :goto_fd
    if-eqz v15, :cond_101

    .line 256
    add-int/lit8 v5, v5, -0x1

    .line 258
    :cond_101
    invoke-virtual {v10, v15}, Landroidx/appcompat/view/menu/j;->e(Z)V

    .line 261
    goto :goto_94

    .line 262
    :cond_105
    const/4 v0, 0x0

    .line 263
    invoke-virtual {v10, v0}, Landroidx/appcompat/view/menu/j;->e(Z)V

    .line 266
    :goto_109
    add-int/lit8 v3, v3, 0x1

    .line 268
    const/4 v13, 0x2

    .line 269
    move-object/from16 v0, p0

    .line 271
    const/4 v14, 0x1

    .line 272
    goto/16 :goto_67

    .line 274
    :cond_111
    move v3, v14

    .line 275
    return v3
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/h;)V
    .registers 7

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    .line 14
    if-nez v0, :cond_12

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 19
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    const/4 v1, 0x2

    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object p1

    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 43
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 45
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 47
    const/16 v3, 0x258

    .line 49
    if-gt p1, v3, :cond_5a

    .line 51
    if-gt v0, v3, :cond_5a

    .line 53
    const/16 p1, 0x2d0

    .line 55
    const/16 v3, 0x3c0

    .line 57
    if-le v0, v3, :cond_3c

    .line 59
    if-gt v2, p1, :cond_5a

    .line 61
    :cond_3c
    if-le v0, p1, :cond_41

    .line 63
    if-le v2, v3, :cond_41

    .line 65
    goto :goto_5a

    .line 66
    :cond_41
    const/16 p1, 0x1f4

    .line 68
    if-ge v0, p1, :cond_58

    .line 70
    const/16 p1, 0x1e0

    .line 72
    const/16 v3, 0x280

    .line 74
    if-le v0, v3, :cond_4d

    .line 76
    if-gt v2, p1, :cond_58

    .line 78
    :cond_4d
    if-le v0, p1, :cond_52

    .line 80
    if-le v2, v3, :cond_52

    .line 82
    goto :goto_58

    .line 83
    :cond_52
    const/16 p1, 0x168

    .line 85
    if-lt v0, p1, :cond_5b

    .line 87
    const/4 v1, 0x3

    .line 88
    goto :goto_5b

    .line 89
    :cond_58
    :goto_58
    const/4 v1, 0x4

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    :goto_5a
    const/4 v1, 0x5

    .line 92
    :cond_5b
    :goto_5b
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 94
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    .line 96
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 98
    const/4 v1, 0x0

    .line 99
    if-eqz v0, :cond_90

    .line 101
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 103
    if-nez v0, :cond_88

    .line 105
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 107
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->a:Landroid/content/Context;

    .line 109
    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 112
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_7f

    .line 119
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    .line 126
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 128
    :cond_7f
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 131
    move-result v0

    .line 132
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 134
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 137
    :cond_88
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 142
    move-result v0

    .line 143
    sub-int/2addr p1, v0

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 147
    :goto_92
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 149
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    move-result-object p1

    .line 153
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 155
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_12

    .line 14
    iget-object v0, v0, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 16
    invoke-interface {v0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/n$a;->onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V

    .line 26
    :cond_19
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 8
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 10
    if-lez p1, :cond_1c

    .line 12
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1c

    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/view/menu/s;

    .line 26
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z

    .line 29
    :cond_1c
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 3
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 6
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:I

    .line 8
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 10
    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->hasVisibleItems()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    move-object v0, p1

    .line 10
    :goto_9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s;->getParentMenu()Landroid/view/Menu;

    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 16
    if-eq v2, v3, :cond_18

    .line 18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s;->getParentMenu()Landroid/view/Menu;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/appcompat/view/menu/s;

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v2, :cond_24

    .line 36
    goto :goto_41

    .line 37
    :cond_24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v4

    .line 41
    move v5, v1

    .line 42
    :goto_29
    if-ge v5, v4, :cond_41

    .line 44
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v6

    .line 48
    instance-of v7, v6, Landroidx/appcompat/view/menu/o$a;

    .line 50
    if-eqz v7, :cond_3e

    .line 52
    move-object v7, v6

    .line 53
    check-cast v7, Landroidx/appcompat/view/menu/o$a;

    .line 55
    invoke-interface {v7}, Landroidx/appcompat/view/menu/o$a;->getItemData()Landroidx/appcompat/view/menu/j;

    .line 58
    move-result-object v7

    .line 59
    if-ne v7, v0, :cond_3e

    .line 61
    move-object v3, v6

    .line 62
    goto :goto_41

    .line 63
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    .line 65
    goto :goto_29

    .line 66
    :cond_41
    :goto_41
    if-nez v3, :cond_44

    .line 68
    return v1

    .line 69
    :cond_44
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/s;->getItem()Landroid/view/MenuItem;

    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 76
    move-result v0

    .line 77
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:I

    .line 79
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->size()I

    .line 82
    move-result v0

    .line 83
    move v2, v1

    .line 84
    :goto_53
    const/4 v4, 0x1

    .line 85
    if-ge v2, v0, :cond_6b

    .line 87
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_68

    .line 97
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_68

    .line 103
    move v0, v4

    .line 104
    goto :goto_6c

    .line 105
    :cond_68
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_53

    .line 108
    :cond_6b
    move v0, v1

    .line 109
    :goto_6c
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 111
    iget-object v5, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    .line 113
    invoke-direct {v2, p0, v5, p1, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/s;Landroid/view/View;)V

    .line 116
    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 118
    iput-boolean v0, v2, Landroidx/appcompat/view/menu/m;->h:Z

    .line 120
    iget-object v2, v2, Landroidx/appcompat/view/menu/m;->j:Landroidx/appcompat/view/menu/l;

    .line 122
    if-eqz v2, :cond_7e

    .line 124
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/l;->e(Z)V

    .line 127
    :cond_7e
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->b()Z

    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_88

    .line 135
    :goto_86
    move v1, v4

    .line 136
    goto :goto_91

    .line 137
    :cond_88
    iget-object v2, v0, Landroidx/appcompat/view/menu/m;->f:Landroid/view/View;

    .line 139
    if-nez v2, :cond_8d

    .line 141
    goto :goto_91

    .line 142
    :cond_8d
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/m;->d(IIZZ)V

    .line 145
    goto :goto_86

    .line 146
    :goto_91
    if-eqz v1, :cond_9b

    .line 148
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    .line 150
    if-eqz v0, :cond_9a

    .line 152
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/h;)Z

    .line 155
    :cond_9a
    return v4

    .line 156
    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    .line 160
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1
.end method

.method public final updateMenuView(Z)V
    .registers 13

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p1, :cond_b

    .line 10
    goto/16 :goto_82

    .line 12
    :cond_b
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 14
    if-eqz v3, :cond_68

    .line 16
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->flagActionItems()V

    .line 19
    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 21
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v4

    .line 29
    move v5, v0

    .line 30
    move v6, v5

    .line 31
    :goto_1e
    if-ge v5, v4, :cond_69

    .line 33
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Landroidx/appcompat/view/menu/j;

    .line 39
    iget v8, v7, Landroidx/appcompat/view/menu/j;->x:I

    .line 41
    const/16 v9, 0x20

    .line 43
    and-int/2addr v8, v9

    .line 44
    if-ne v8, v9, :cond_2f

    .line 46
    move v8, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v8, v0

    .line 49
    :goto_30
    if-eqz v8, :cond_65

    .line 51
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v8

    .line 55
    instance-of v9, v8, Landroidx/appcompat/view/menu/o$a;

    .line 57
    if-eqz v9, :cond_42

    .line 59
    move-object v9, v8

    .line 60
    check-cast v9, Landroidx/appcompat/view/menu/o$a;

    .line 62
    invoke-interface {v9}, Landroidx/appcompat/view/menu/o$a;->getItemData()Landroidx/appcompat/view/menu/j;

    .line 65
    move-result-object v9

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move-object v9, v2

    .line 68
    :goto_43
    invoke-virtual {p0, v7, v8, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    move-result-object v10

    .line 72
    if-eq v7, v9, :cond_4f

    .line 74
    invoke-virtual {v10, v0}, Landroid/view/View;->setPressed(Z)V

    .line 77
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 80
    :cond_4f
    if-eq v10, v8, :cond_63

    .line 82
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Landroid/view/ViewGroup;

    .line 88
    if-eqz v7, :cond_5c

    .line 90
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    :cond_5c
    iget-object v7, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 95
    check-cast v7, Landroid/view/ViewGroup;

    .line 97
    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 100
    :cond_63
    add-int/lit8 v6, v6, 0x1

    .line 102
    :cond_65
    add-int/lit8 v5, v5, 0x1

    .line 104
    goto :goto_1e

    .line 105
    :cond_68
    move v6, v0

    .line 106
    :cond_69
    :goto_69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    move-result v3

    .line 110
    if-ge v6, v3, :cond_82

    .line 112
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 118
    if-ne v3, v4, :cond_79

    .line 120
    move v3, v0

    .line 121
    goto :goto_7d

    .line 122
    :cond_79
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 125
    move v3, v1

    .line 126
    :goto_7d
    if-nez v3, :cond_69

    .line 128
    add-int/lit8 v6, v6, 0x1

    .line 130
    goto :goto_69

    .line 131
    :cond_82
    :goto_82
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 133
    check-cast p1, Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 138
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 140
    if-eqz p1, :cond_a3

    .line 142
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getActionItems()Ljava/util/ArrayList;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 149
    move-result v3

    .line 150
    move v4, v0

    .line 151
    :goto_96
    if-ge v4, v3, :cond_a3

    .line 153
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Landroidx/appcompat/view/menu/j;

    .line 159
    iget-object v5, v5, Landroidx/appcompat/view/menu/j;->A:Lm0/b;

    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 163
    goto :goto_96

    .line 164
    :cond_a3
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 166
    if-eqz p1, :cond_ab

    .line 168
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getNonActionItems()Ljava/util/ArrayList;

    .line 171
    move-result-object v2

    .line 172
    :cond_ab
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 174
    if-eqz p1, :cond_c5

    .line 176
    if-eqz v2, :cond_c5

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 181
    move-result p1

    .line 182
    if-ne p1, v1, :cond_c2

    .line 184
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroidx/appcompat/view/menu/j;

    .line 190
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/j;->C:Z

    .line 192
    xor-int/lit8 v0, p1, 0x1

    .line 194
    goto :goto_c5

    .line 195
    :cond_c2
    if-lez p1, :cond_c5

    .line 197
    move v0, v1

    .line 198
    :cond_c5
    :goto_c5
    if-eqz v0, :cond_ff

    .line 200
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 202
    if-nez p1, :cond_d4

    .line 204
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 206
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->a:Landroid/content/Context;

    .line 208
    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 211
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 213
    :cond_d4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroid/view/ViewGroup;

    .line 221
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 223
    if-eq p1, v0, :cond_112

    .line 225
    if-eqz p1, :cond_e7

    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    :cond_e7
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 234
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 243
    invoke-direct {v2}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>()V

    .line 246
    const/16 v3, 0x10

    .line 248
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 250
    iput-boolean v1, v2, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 252
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    goto :goto_112

    .line 256
    :cond_ff
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 258
    if-eqz p1, :cond_112

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 263
    move-result-object p1

    .line 264
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 266
    if-ne p1, v0, :cond_112

    .line 268
    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 272
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    :cond_112
    :goto_112
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->h:Landroidx/appcompat/view/menu/o;

    .line 277
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 279
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 281
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 284
    return-void
.end method
