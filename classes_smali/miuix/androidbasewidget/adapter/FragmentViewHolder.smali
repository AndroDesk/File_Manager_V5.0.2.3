.class public final Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "FragmentViewHolder.java"


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static create(Landroid/view/ViewGroup;)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    sget-object p0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {}, Lm0/g0$e;->a()I

    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 32
    new-instance p0, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 34
    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    .line 37
    return-object p0
.end method


# virtual methods
.method public getContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    check-cast v0, Landroid/widget/FrameLayout;

    .line 5
    return-object v0
.end method
