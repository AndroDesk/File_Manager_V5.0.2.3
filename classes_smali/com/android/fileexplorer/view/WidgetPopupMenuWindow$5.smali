.class Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;
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
.method public constructor <init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_14

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;->this$0:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    .line 14
    move-result-object p1

    .line 15
    const v0, 0x7f0a03af

    .line 18
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;->onItemClick(I)V

    .line 21
    :cond_14
    return-void
.end method
