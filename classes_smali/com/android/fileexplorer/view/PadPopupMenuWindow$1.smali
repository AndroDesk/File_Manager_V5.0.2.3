.class Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;
.super Ljava/lang/Object;
.source "PadPopupMenuWindow.java"

# interfaces
.implements Lcom/android/fileexplorer/view/PadFabExpandView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/PadPopupMenuWindow;->initPadPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/PadPopupMenuWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)V
    .registers 3

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-static {p2}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/PadPopupMenuWindow;

    invoke-static {p2}, Lcom/android/fileexplorer/view/PadPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/PadPopupMenuWindow;)Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/view/PadPopupMenuWindow$OnItemClickListener;->onItemClick(I)V

    :cond_11
    return-void
.end method
