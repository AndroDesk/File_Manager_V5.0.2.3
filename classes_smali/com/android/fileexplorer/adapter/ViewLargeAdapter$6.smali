.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    .line 10
    return-void
.end method
