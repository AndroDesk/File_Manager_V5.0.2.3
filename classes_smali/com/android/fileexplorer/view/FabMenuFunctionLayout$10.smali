.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;
.super Ljava/lang/Object;
.source "FabMenuFunctionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;
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

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$10;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->closeIfExpand()Z

    return-void
.end method
