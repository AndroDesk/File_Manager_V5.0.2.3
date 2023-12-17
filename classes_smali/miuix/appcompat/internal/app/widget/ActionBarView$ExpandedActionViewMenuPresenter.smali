.class Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field public mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarView$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 7

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 5
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    .line 7
    if-eqz v0, :cond_d

    .line 9
    check-cast p1, Landroid/view/CollapsibleActionView;

    .line 11
    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 16
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 23
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 35
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x2

    .line 40
    and-int/2addr p1, v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz p1, :cond_34

    .line 44
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 46
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_34
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 55
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 58
    move-result p1

    .line 59
    and-int/lit8 p1, p1, 0x8

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz p1, :cond_52

    .line 64
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 66
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_4d

    .line 72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 74
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 80
    invoke-static {p1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 83
    :cond_52
    :goto_52
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 85
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_6b

    .line 91
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 93
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 96
    move-result p1

    .line 97
    if-ne p1, v1, :cond_6b

    .line 99
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 101
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_6b
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 110
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_84

    .line 116
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 118
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 121
    move-result p1

    .line 122
    if-ne p1, v1, :cond_84

    .line 124
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 126
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_84
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 135
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_9d

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 143
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 146
    move-result p1

    .line 147
    if-ne p1, v1, :cond_9d

    .line 149
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 151
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_9d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 160
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_b6

    .line 166
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 168
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 171
    move-result p1

    .line 172
    if-ne p1, v1, :cond_b6

    .line 174
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 176
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_b6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 185
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_cf

    .line 191
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 193
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2700(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 196
    move-result p1

    .line 197
    if-ne p1, v3, :cond_cf

    .line 199
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 201
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_cf
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 210
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 213
    move-result-object p1

    .line 214
    if-eqz p1, :cond_ea

    .line 216
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 218
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    .line 221
    move-result p1

    .line 222
    and-int/lit8 p1, p1, 0x10

    .line 224
    if-eqz p1, :cond_ea

    .line 226
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 228
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_ea
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 237
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 246
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 251
    invoke-virtual {p2, v2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 254
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 256
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 259
    return v3
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 16
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 22
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 45
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 47
    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 55
    if-eq p1, v0, :cond_3d

    .line 57
    iget-object p1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 59
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_3d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 64
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 74
    if-eq p1, v0, :cond_52

    .line 76
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_52
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 85
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 88
    move-result-object p1

    .line 89
    const/16 v0, 0x8

    .line 91
    if-eqz p1, :cond_65

    .line 93
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 95
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_65
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 104
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_73

    .line 110
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1700(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)V

    .line 116
    :cond_73
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 118
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_84

    .line 124
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 126
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_84
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 135
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_95

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 143
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_95
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 152
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_a6

    .line 158
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 160
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_a6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 169
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_b7

    .line 175
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 177
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;

    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_b7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 186
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_c8

    .line 192
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 194
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2200(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_c8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 203
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_d9

    .line 209
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 211
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/view/View;

    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_d9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 223
    const/4 p1, 0x1

    .line 224
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 227
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 229
    iget-object p2, p2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 231
    instance-of v0, p2, Landroid/view/CollapsibleActionView;

    .line 233
    if-eqz v0, :cond_ef

    .line 235
    check-cast p2, Landroid/view/CollapsibleActionView;

    .line 237
    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 240
    :cond_ef
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 242
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    .line 245
    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 12
    :cond_b
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 14
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 3
    if-eqz p1, :cond_28

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1f

    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 13
    move-result p1

    .line 14
    move v1, v0

    .line 15
    :goto_e
    if-ge v1, p1, :cond_1f

    .line 17
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 19
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 25
    if-ne v2, v3, :cond_1c

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_e

    .line 32
    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 38
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 41
    :cond_28
    return-void
.end method
