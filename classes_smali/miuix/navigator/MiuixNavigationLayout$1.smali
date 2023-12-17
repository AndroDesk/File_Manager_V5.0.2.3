.class Lmiuix/navigator/MiuixNavigationLayout$1;
.super Ljava/lang/Object;
.source "MiuixNavigationLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/MiuixNavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/MiuixNavigationLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    const/16 p4, 0x8

    if-ne p1, p4, :cond_b

    move p5, p2

    goto :goto_c

    :cond_b
    sub-int/2addr p5, p3

    :goto_c
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result p1

    if-eq p1, p5, :cond_39

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1, p5}, Lmiuix/navigator/MiuixNavigationLayout;->access$002(Lmiuix/navigator/MiuixNavigationLayout;I)I

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;

    move-result-object p1

    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p3}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result p3

    if-lez p3, :cond_30

    const/4 p2, 0x1

    :cond_30
    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p3}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    :cond_39
    return-void
.end method
