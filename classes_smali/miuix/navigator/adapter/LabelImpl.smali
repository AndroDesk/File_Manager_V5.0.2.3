.class public Lmiuix/navigator/adapter/LabelImpl;
.super Lmiuix/navigator/Navigator$Label;
.source "LabelImpl.java"

# interfaces
.implements Lmiuix/navigator/adapter/NavigationAdapterItem;


# instance fields
.field private mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRes:I

.field private final mId:I

.field private mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/Navigator$Label;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    .line 10
    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mId:I

    .line 12
    return-void
.end method


# virtual methods
.method public findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, -0x1

    .line 12
    :goto_b
    return p1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    .line 3
    return v0
.end method

.method public getItemCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mId:I

    .line 3
    int-to-long v0, p1

    .line 4
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lmiuix/navigator/adapter/NavigationAdapter;

    .line 9
    invoke-virtual {p2}, Lmiuix/navigator/adapter/NavigationAdapter;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1, p0}, Lmiuix/navigator/adapter/LabelAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/Navigator$Label;)V

    .line 16
    return-void
.end method

.method public notifyChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1a

    .line 12
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 27
    :cond_1a
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 4
    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    return-void
.end method

.method public setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    .line 6
    return-void
.end method
