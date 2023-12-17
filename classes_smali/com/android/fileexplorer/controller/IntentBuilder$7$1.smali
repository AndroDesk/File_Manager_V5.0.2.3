.class Lcom/android/fileexplorer/controller/IntentBuilder$7$1;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder$7;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/IntentBuilder$7;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/IntentBuilder$7;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;->this$0:Lcom/android/fileexplorer/controller/IntentBuilder$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;->this$0:Lcom/android/fileexplorer/controller/IntentBuilder$7;

    iget-object v0, v0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    return-void
.end method
