.class Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ScrollableViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$000(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    .line 6
    move-result p1

    .line 7
    if-eq p5, p1, :cond_3c

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$100(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Landroid/widget/Scroller;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    if-eqz p1, :cond_37

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 24
    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    .line 27
    move-result p1

    .line 28
    if-ne p1, p2, :cond_1e

    .line 30
    goto :goto_37

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 33
    invoke-static {p1, p5}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$002(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x2

    .line 43
    if-ne p1, p2, :cond_3c

    .line 45
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 47
    invoke-static {p1, p5}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$402(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 52
    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$500(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 58
    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$302(Lcom/android/fileexplorer/view/ScrollableViewDrawer;Z)Z

    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method
