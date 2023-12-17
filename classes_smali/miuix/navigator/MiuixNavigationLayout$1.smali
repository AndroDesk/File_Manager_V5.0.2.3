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
.method public constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/16 p4, 0x8

    .line 8
    if-ne p1, p4, :cond_b

    .line 10
    move p5, p2

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    sub-int/2addr p5, p3

    .line 13
    :goto_c
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 15
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 18
    move-result p1

    .line 19
    if-eq p1, p5, :cond_39

    .line 21
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 23
    invoke-static {p1, p5}, Lmiuix/navigator/MiuixNavigationLayout;->access$002(Lmiuix/navigator/MiuixNavigationLayout;I)I

    .line 26
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 28
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_39

    .line 34
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 36
    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$100(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/NavigatorFragmentListener;

    .line 39
    move-result-object p1

    .line 40
    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 42
    invoke-static {p3}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 45
    move-result p3

    .line 46
    if-lez p3, :cond_30

    .line 48
    const/4 p2, 0x1

    .line 49
    :cond_30
    iget-object p3, p0, Lmiuix/navigator/MiuixNavigationLayout$1;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    .line 51
    invoke-static {p3}, Lmiuix/navigator/MiuixNavigationLayout;->access$000(Lmiuix/navigator/MiuixNavigationLayout;)I

    .line 54
    move-result p3

    .line 55
    invoke-interface {p1, p2, p3}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    .line 58
    :cond_39
    return-void
.end method
