.class Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;
.super Ljava/lang/Object;
.source "WidgetPopupMenuWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    invoke-static {p1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    invoke-static {p1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    move-result-object p1

    const v0, 0x7f0a03b4

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;->onItemClick(I)V

    :cond_14
    return-void
.end method
