.class Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->onBindViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

.field public final synthetic val$container:Landroid/widget/FrameLayout;

.field public final synthetic val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 4

    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    :cond_14
    return-void
.end method
