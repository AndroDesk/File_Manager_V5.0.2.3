.class Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;
.super Ljava/lang/Object;
.source "WidgetEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->access$000(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/WidgetEditAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter;->access$000(Lcom/android/fileexplorer/adapter/WidgetEditAdapter;)Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/WidgetEditAdapter$onEditClickListener;->onAddClick()V

    :cond_11
    return-void
.end method
