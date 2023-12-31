.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;",
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
.field private checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 13
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 16
    return-void
.end method

.method public static synthetic access$100(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;I)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->adjustItemPositionForA11yDelegate(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private adjustItemPositionForA11yDelegate(I)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    :goto_2
    if-ge v0, p1, :cond_14

    .line 5
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 7
    iget-object v2, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 9
    invoke-virtual {v2, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne v2, v3, :cond_11

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 18
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_2

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 23
    iget-object p1, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_20

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 33
    :cond_20
    return v1
.end method

.method private appendTransparentIconIfMissing(II)V
    .registers 5

    .line 1
    :goto_0
    if-ge p1, p2, :cond_10

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

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
    iget-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 5
    if-eqz v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 11
    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 18
    new-instance v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 20
    invoke-direct {v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const/4 v2, -0x1

    .line 27
    iget-object v3, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 29
    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 31
    invoke-virtual {v3}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

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
    if-ge v5, v3, :cond_111

    .line 45
    iget-object v8, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 47
    iget-object v8, v8, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->menu:Lmiuix/appcompat/view/menu/MenuBuilder;

    .line 49
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 59
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_43

    .line 65
    invoke-virtual {v0, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 68
    :cond_43
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_4c

    .line 74
    invoke-virtual {v8, v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 77
    :cond_4c
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_c5

    .line 83
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    .line 86
    move-result-object v9

    .line 87
    invoke-interface {v9}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_10c

    .line 93
    if-eqz v5, :cond_6c

    .line 95
    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 97
    new-instance v11, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 99
    iget-object v12, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 101
    iget v12, v12, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 103
    invoke-direct {v11, v12, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 106
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_6c
    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 111
    new-instance v11, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 113
    invoke-direct {v11, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 116
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v10

    .line 125
    invoke-interface {v9}, Landroid/view/Menu;->size()I

    .line 128
    move-result v11

    .line 129
    move v12, v4

    .line 130
    move v13, v12

    .line 131
    :goto_82
    if-ge v12, v11, :cond_b9

    .line 133
    invoke-interface {v9, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 136
    move-result-object v14

    .line 137
    check-cast v14, Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 139
    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 142
    move-result v15

    .line 143
    if-eqz v15, :cond_b5

    .line 145
    if-nez v13, :cond_99

    .line 147
    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 150
    move-result-object v15

    .line 151
    if-eqz v15, :cond_99

    .line 153
    move v13, v1

    .line 154
    :cond_99
    invoke-virtual {v14}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 157
    move-result v15

    .line 158
    if-eqz v15, :cond_a2

    .line 160
    invoke-virtual {v14, v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 163
    :cond_a2
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 166
    move-result v15

    .line 167
    if-eqz v15, :cond_ab

    .line 169
    invoke-virtual {v0, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 172
    :cond_ab
    iget-object v15, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 176
    invoke-direct {v1, v14}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 179
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_b5
    add-int/lit8 v12, v12, 0x1

    .line 184
    const/4 v1, 0x1

    .line 185
    goto :goto_82

    .line 186
    :cond_b9
    if-eqz v13, :cond_10c

    .line 188
    iget-object v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 193
    move-result v1

    .line 194
    invoke-direct {v0, v10, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 197
    goto :goto_10c

    .line 198
    :cond_c5
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    .line 201
    move-result v1

    .line 202
    if-eq v1, v2, :cond_ed

    .line 204
    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v7

    .line 210
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_d9

    .line 216
    const/4 v6, 0x1

    .line 217
    goto :goto_da

    .line 218
    :cond_d9
    move v6, v4

    .line 219
    :goto_da
    if-eqz v5, :cond_ff

    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 223
    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 225
    new-instance v9, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 227
    iget-object v10, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 229
    iget v10, v10, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 231
    invoke-direct {v9, v10, v10}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 234
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    goto :goto_ff

    .line 238
    :cond_ed
    if-nez v6, :cond_ff

    .line 240
    invoke-virtual {v8}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_ff

    .line 246
    iget-object v2, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 251
    move-result v2

    .line 252
    invoke-direct {v0, v7, v2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 255
    const/4 v6, 0x1

    .line 256
    :cond_ff
    :goto_ff
    new-instance v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 258
    invoke-direct {v2, v8}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 261
    iput-boolean v6, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 263
    iget-object v8, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    move v2, v1

    .line 269
    :cond_10c
    :goto_10c
    add-int/lit8 v5, v5, 0x1

    .line 271
    const/4 v1, 0x1

    .line 272
    goto/16 :goto_2a

    .line 274
    :cond_111
    iput-boolean v4, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 276
    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;IZ)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    .line 3
    invoke-direct {v0, p0, p2, p3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    .line 6
    invoke-static {p1, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 9
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
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 8
    if-eqz v1, :cond_12

    .line 10
    invoke-virtual {v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 13
    move-result v1

    .line 14
    const-string v2, "android:menu:checked"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    :cond_12
    new-instance v1, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v3

    .line 31
    :goto_1e
    if-ge v2, v3, :cond_4e

    .line 33
    iget-object v4, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 41
    instance-of v5, v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 43
    if-eqz v5, :cond_4b

    .line 45
    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 47
    invoke-virtual {v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_39

    .line 53
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 56
    move-result-object v5

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    const/4 v5, 0x0

    .line 59
    :goto_3a
    if-eqz v5, :cond_4b

    .line 61
    new-instance v6, Lmiuix/internal/util/ParcelableSparseArray;

    .line 63
    invoke-direct {v6}, Lmiuix/internal/util/ParcelableSparseArray;-><init>()V

    .line 66
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 69
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 72
    move-result v4

    .line 73
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_1e

    .line 79
    :cond_4e
    const-string v2, "android:menu:action_views"

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 84
    return-object v0
.end method

.method public getCheckedItem()Lmiuix/appcompat/view/menu/MenuItemImpl;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 9
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 11
    if-eqz v0, :cond_e

    .line 13
    const/4 p1, 0x2

    .line 14
    return p1

    .line 15
    :cond_e
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x3

    .line 20
    return p1

    .line 21
    :cond_14
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 23
    if-eqz v0, :cond_28

    .line 25
    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 27
    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

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
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 3
    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_e

    .line 13
    move v0, v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v0, v2

    .line 16
    :goto_f
    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 18
    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 20
    invoke-virtual {v3}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemCount()I

    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_2a

    .line 26
    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    .line 28
    iget-object v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->adapter:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 30
    invoke-virtual {v3, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_25

    .line 36
    if-ne v3, v2, :cond_27

    .line 38
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 40
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_f

    .line 43
    :cond_2a
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;I)V
    .registers 8

    .line 2
    invoke-virtual {p0, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_78

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    goto/16 :goto_10c

    .line 3
    :cond_11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_10c

    .line 4
    :cond_18
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetStart:I

    .line 6
    invoke-virtual {p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v2, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    .line 7
    invoke-virtual {p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result p2

    .line 8
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_10c

    .line 9
    :cond_37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    if-eqz v0, :cond_57

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 14
    :cond_57
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v3, v3, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 17
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 18
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_73

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 20
    :cond_73
    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_10c

    .line 21
    :cond_78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;

    .line 22
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textAppearance:I

    if-eqz v0, :cond_8c

    .line 24
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 25
    :cond_8c
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_95

    .line 26
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 27
    :cond_95
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 28
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_b0

    :cond_af
    move-object v0, v1

    .line 29
    :goto_b0
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 30
    invoke-static {p1, v0}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_d0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 33
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    :cond_cd
    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_d0
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 36
    iget-boolean v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 37
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v2, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 39
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-boolean v2, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    if-eqz v2, :cond_f8

    .line 40
    iget v1, v1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->itemIconSize:I

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 41
    :cond_f8
    iget-object v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    invoke-static {v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->access$000(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 42
    invoke-virtual {v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->initialize(Lmiuix/appcompat/view/menu/MenuItemImpl;I)V

    .line 43
    invoke-direct {p0, p1, p2, v1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    :goto_10c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;
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
    new-instance p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object p2, p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_17
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 4
    :cond_21
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 5
    :cond_2b
    new-instance p2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;

    iget-object v1, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$ViewHolder;)V
    .registers 3

    .line 2
    instance-of v0, p1, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_b

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/internal/NavigationMenuItemView;->recycle()V

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
    if-eqz v0, :cond_3b

    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 13
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    move v3, v1

    .line 20
    :goto_13
    if-ge v3, v2, :cond_36

    .line 22
    iget-object v4, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 30
    instance-of v5, v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 32
    if-eqz v5, :cond_33

    .line 34
    check-cast v4, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 36
    invoke-virtual {v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_33

    .line 42
    invoke-virtual {v4}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 45
    move-result v5

    .line 46
    if-ne v5, v0, :cond_33

    .line 48
    invoke-virtual {p0, v4}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    .line 51
    goto :goto_36

    .line 52
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_13

    .line 55
    :cond_36
    :goto_36
    iput-boolean v1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 57
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 60
    :cond_3b
    const-string v0, "android:menu:action_views"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_7b

    .line 68
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v0

    .line 74
    :goto_49
    if-ge v1, v0, :cond_7b

    .line 76
    iget-object v2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 84
    instance-of v3, v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 86
    if-nez v3, :cond_58

    .line 88
    goto :goto_78

    .line 89
    :cond_58
    check-cast v2, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 91
    invoke-virtual {v2}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 94
    move-result-object v2

    .line 95
    if-nez v2, :cond_61

    .line 97
    goto :goto_78

    .line 98
    :cond_61
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_68

    .line 104
    goto :goto_78

    .line 105
    :cond_68
    invoke-virtual {v2}, Lmiuix/appcompat/view/menu/MenuItemImpl;->getItemId()I

    .line 108
    move-result v2

    .line 109
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lmiuix/internal/util/ParcelableSparseArray;

    .line 115
    if-nez v2, :cond_75

    .line 117
    goto :goto_78

    .line 118
    :cond_75
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 121
    :goto_78
    add-int/lit8 v1, v1, 0x1

    .line 123
    goto :goto_49

    .line 124
    :cond_7b
    return-void
.end method

.method public setCheckedItem(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 3
    if-eq v0, p1, :cond_19

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_19

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 14
    if-eqz v0, :cond_13

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 20
    :cond_13
    iput-object p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Lmiuix/appcompat/view/menu/MenuItemImpl;

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lmiuix/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 3
    return-void
.end method

.method public update()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    return-void
.end method
