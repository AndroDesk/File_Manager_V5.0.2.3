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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$000(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    move-result p1

    if-eq p5, p1, :cond_3c

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$100(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    move-result p1

    if-ne p1, p2, :cond_1e

    goto :goto_37

    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1, p5}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$002(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$200(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3c

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1, p5}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$402(Lcom/android/fileexplorer/view/ScrollableViewDrawer;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$500(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    goto :goto_3c

    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$1;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$302(Lcom/android/fileexplorer/view/ScrollableViewDrawer;Z)Z

    :cond_3c
    :goto_3c
    return-void
.end method
