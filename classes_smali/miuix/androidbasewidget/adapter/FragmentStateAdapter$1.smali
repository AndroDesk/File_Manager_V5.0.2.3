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
.method public constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 3
    iput-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    .line 5
    iput-object p3, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$container:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 14
    iget-object p1, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->this$0:Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;

    .line 16
    iget-object p2, p0, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;->val$holder:Lmiuix/androidbasewidget/adapter/FragmentViewHolder;

    .line 18
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lmiuix/androidbasewidget/adapter/FragmentViewHolder;)V

    .line 21
    :cond_14
    return-void
.end method
