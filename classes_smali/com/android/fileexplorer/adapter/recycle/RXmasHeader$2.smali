.class Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;
.super Ljava/lang/Object;
.source "RXmasHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startPullEndAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;->this$0:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    return-void
.end method
