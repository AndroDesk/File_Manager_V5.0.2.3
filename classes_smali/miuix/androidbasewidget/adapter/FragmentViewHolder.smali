.class public final Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "FragmentViewHolder.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;)Lmiuix/androidbasewidget/adapter/FragmentViewHolder;
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lm0/g0$e;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSaveEnabled(Z)V

    new-instance p0, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/adapter/FragmentViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object p0
.end method


# virtual methods
.method public getContainer()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method
