.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
