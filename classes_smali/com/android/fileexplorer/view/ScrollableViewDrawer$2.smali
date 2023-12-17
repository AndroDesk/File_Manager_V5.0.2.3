.class Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ScrollableViewDrawer;->openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
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

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p1}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$600(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$700(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    invoke-static {p3}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->access$800(Lcom/android/fileexplorer/view/ScrollableViewDrawer;)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    new-instance p4, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;-><init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
