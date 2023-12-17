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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/Navigator$Label;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mId:I

    return-void
.end method


# virtual methods
.method public findNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)I
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mId:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public handleBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {p2}, Lmiuix/navigator/adapter/NavigationAdapter;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lmiuix/navigator/adapter/LabelAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public notifyChanged()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/adapter/LabelImpl;->mHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1a
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mIconRes:I

    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    return-void
.end method

.method public setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    return-void
.end method
