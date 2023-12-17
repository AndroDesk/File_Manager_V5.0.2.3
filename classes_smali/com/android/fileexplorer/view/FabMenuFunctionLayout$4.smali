.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;
.super Ljava/lang/Object;
.source "FabMenuFunctionLayout.java"

# interfaces
.implements Lcom/android/fileexplorer/view/FabExpandView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->initFabExpandView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_30

    goto :goto_1d

    :sswitch_6
    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->saveViewTypeIfNeed(I)V

    goto :goto_1d

    :sswitch_c
    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {p2, v1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->saveViewTypeIfNeed(I)V

    goto :goto_1d

    :sswitch_12
    iget-object v1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {v1, p2, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->saveSortMethodIfNeed(IZ)V

    goto :goto_1d

    :sswitch_18
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {v0, p2, v1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->saveSortMethodIfNeed(IZ)V

    :goto_1d
    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {p2}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$4;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {p2}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$200(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$OnItemClickListener;->onItemClick(I)V

    :cond_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x7f0a03af -> :sswitch_18
        0x7f0a03b0 -> :sswitch_12
        0x7f0a03b4 -> :sswitch_18
        0x7f0a03b5 -> :sswitch_12
        0x7f0a03b6 -> :sswitch_18
        0x7f0a03b7 -> :sswitch_12
        0x7f0a03ba -> :sswitch_18
        0x7f0a03bb -> :sswitch_12
        0x7f0a048f -> :sswitch_c
        0x7f0a0492 -> :sswitch_6
    .end sparse-switch
.end method
