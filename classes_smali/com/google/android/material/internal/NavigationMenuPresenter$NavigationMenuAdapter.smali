.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroidx/appcompat/view/menu/j;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 16
    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .registers 5

    .line 1
    :goto_0
    if-ge p1, p2, :cond_10

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_10
    return-void
.end method

.method private prepareMenuItems()V
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 5
    if-eqz v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 11
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 18
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 20
    invoke-direct {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const/4 v2, -0x1

    .line 27
    iget-object v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 29
    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/h;

    .line 31
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    move v5, v4

    .line 41
    move v6, v5

    .line 42
    move v7, v6

    .line 43
    :goto_2a
    if-ge v5, v3, :cond_10d

    .line 45
    iget-object v8, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 47
    iget-object v8, v8, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/h;

    .line 49
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/h;->getVisibleItems()Ljava/util/ArrayList;

    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Landroidx/appcompat/view/menu/j;

    .line 59
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_43

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/j;)V

    .line 68
    :cond_43
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_4c

    .line 74
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/j;->d(Z)V

    .line 77
    :cond_4c
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_c3

    .line 83
    iget-object v9, v8, Landroidx/appcompat/view/menu/j;->o:Landroidx/appcompat/view/menu/s;

    .line 85
    invoke-interface {v9}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_108

    .line 91
    if-eqz v5, :cond_6a

    .line 93
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 95
    new-instance v11, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 97
    iget-object v12, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 99
    iget v12, v12, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 101
    invoke-direct {v11, v12, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 104
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 109
    new-instance v11, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 111
    invoke-direct {v11, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/j;)V

    .line 114
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 122
    move-result v10

    .line 123
    invoke-interface {v9}, Landroid/view/Menu;->size()I

    .line 126
    move-result v11

    .line 127
    move v12, v4

    .line 128
    move v13, v12

    .line 129
    :goto_80
    if-ge v12, v11, :cond_b7

    .line 131
    invoke-interface {v9, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 134
    move-result-object v14

    .line 135
    check-cast v14, Landroidx/appcompat/view/menu/j;

    .line 137
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_b3

    .line 143
    if-nez v13, :cond_97

    .line 145
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object v15

    .line 149
    if-eqz v15, :cond_97

    .line 151
    move v13, v1

    .line 152
    :cond_97
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_a0

    .line 158
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/j;->d(Z)V

    .line 161
    :cond_a0
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    .line 164
    move-result v15

    .line 165
    if-eqz v15, :cond_a9

    .line 167
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/j;)V

    .line 170
    :cond_a9
    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 172
    new-instance v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 174
    invoke-direct {v1, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/j;)V

    .line 177
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_b3
    add-int/lit8 v12, v12, 0x1

    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_80

    .line 184
    :cond_b7
    if-eqz v13, :cond_108

    .line 186
    iget-object v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result v1

    .line 192
    invoke-direct {v0, v10, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 195
    goto :goto_108

    .line 196
    :cond_c3
    iget v1, v8, Landroidx/appcompat/view/menu/j;->b:I

    .line 198
    if-eq v1, v2, :cond_e9

    .line 200
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 205
    move-result v7

    .line 206
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 209
    move-result-object v2

    .line 210
    if-eqz v2, :cond_d5

    .line 212
    const/4 v6, 0x1

    .line 213
    goto :goto_d6

    .line 214
    :cond_d5
    move v6, v4

    .line 215
    :goto_d6
    if-eqz v5, :cond_fb

    .line 217
    add-int/lit8 v7, v7, 0x1

    .line 219
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 221
    new-instance v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 223
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 225
    iget v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 227
    invoke-direct {v9, v10, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 230
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    goto :goto_fb

    .line 234
    :cond_e9
    if-nez v6, :cond_fb

    .line 236
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 239
    move-result-object v2

    .line 240
    if-eqz v2, :cond_fb

    .line 242
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 247
    move-result v2

    .line 248
    invoke-direct {v0, v7, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 251
    const/4 v6, 0x1

    .line 252
    :cond_fb
    :goto_fb
    new-instance v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 254
    invoke-direct {v2, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/j;)V

    .line 257
    iput-boolean v6, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 259
    iget-object v8, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    move v2, v1

    .line 265
    :cond_108
    :goto_108
    add-int/lit8 v5, v5, 0x1

    .line 267
    const/4 v1, 0x1

    .line 268
    goto/16 :goto_2a

    .line 270
    :cond_10d
    iput-boolean v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 272
    return-void
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/j;

    .line 8
    if-eqz v1, :cond_10

    .line 10
    iget v1, v1, Landroidx/appcompat/view/menu/j;->a:I

    .line 12
    const-string v2, "android:menu:checked"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v3

    .line 29
    :goto_1c
    if-ge v2, v3, :cond_4a

    .line 31
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 39
    instance-of v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 41
    if-eqz v5, :cond_47

    .line 43
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 45
    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_37

    .line 51
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    .line 54
    move-result-object v5

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 v5, 0x0

    .line 57
    :goto_38
    if-eqz v5, :cond_47

    .line 59
    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 61
    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 64
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 67
    iget v4, v4, Landroidx/appcompat/view/menu/j;->a:I

    .line 69
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_47
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_1c

    .line 75
    :cond_4a
    const-string v2, "android:menu:action_views"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 80
    return-object v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 9
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 p1, 0x2

    .line 14
    return p1

    .line 15
    :cond_e
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x3

    .line 20
    return p1

    .line 21
    :cond_14
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 23
    if-eqz v0, :cond_28

    .line 25
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_26

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    const-string v0, "Unknown item type."

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public getRowCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_d

    .line 12
    move v0, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 17
    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemCount()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_27

    .line 25
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 27
    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 29
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_24

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_e

    .line 40
    :cond_27
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V
    .registers 6

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    goto/16 :goto_a6

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a6

    .line 5
    :cond_26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    move-result-object p2

    .line 8
    iget-object p2, p2, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a6

    .line 10
    :cond_3c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 11
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    if-eqz v2, :cond_52

    .line 13
    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 14
    :cond_52
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5b

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_5b
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6a

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x0

    .line 18
    :goto_6b
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-static {p1, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 21
    iget-boolean v0, p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    if-eqz v2, :cond_96

    .line 25
    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 26
    :cond_96
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-static {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->access$000(Lcom/google/android/material/internal/NavigationMenuPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 27
    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/j;I)V

    :goto_a6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    .registers 5

    if-eqz p2, :cond_2b

    const/4 v0, 0x1

    if-eq p2, v0, :cond_21

    const/4 v0, 0x2

    if-eq p2, v0, :cond_17

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_d
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object p2, p2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_17
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 4
    :cond_21
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 5
    :cond_2b
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V
    .registers 3

    .line 2
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_b

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_b
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    const-string v0, "android:menu:checked"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_39

    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 13
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    move v3, v1

    .line 20
    :goto_13
    if-ge v3, v2, :cond_34

    .line 22
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 30
    instance-of v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 32
    if-eqz v5, :cond_31

    .line 34
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_31

    .line 42
    iget v5, v4, Landroidx/appcompat/view/menu/j;->a:I

    .line 44
    if-ne v5, v0, :cond_31

    .line 46
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/j;)V

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_13

    .line 53
    :cond_34
    :goto_34
    iput-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 58
    :cond_39
    const-string v0, "android:menu:action_views"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_77

    .line 66
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v0

    .line 72
    :goto_47
    if-ge v1, v0, :cond_77

    .line 74
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 82
    instance-of v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 84
    if-nez v3, :cond_56

    .line 86
    goto :goto_74

    .line 87
    :cond_56
    check-cast v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 89
    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/j;

    .line 92
    move-result-object v2

    .line 93
    if-nez v2, :cond_5f

    .line 95
    goto :goto_74

    .line 96
    :cond_5f
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    .line 99
    move-result-object v3

    .line 100
    if-nez v3, :cond_66

    .line 102
    goto :goto_74

    .line 103
    :cond_66
    iget v2, v2, Landroidx/appcompat/view/menu/j;->a:I

    .line 105
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 111
    if-nez v2, :cond_71

    .line 113
    goto :goto_74

    .line 114
    :cond_71
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 117
    :goto_74
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_47

    .line 120
    :cond_77
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/j;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/j;

    .line 3
    if-eq v0, p1, :cond_19

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_19

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/j;

    .line 14
    if-eqz v0, :cond_13

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    .line 20
    :cond_13
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/j;

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 3
    return-void
.end method

.method public update()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
