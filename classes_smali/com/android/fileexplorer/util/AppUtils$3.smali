.class Lcom/android/fileexplorer/util/AppUtils$3;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$show:Z

.field public final synthetic val$view:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$show:Z

    iput-object p3, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$view:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$show:Z

    iget-object v2, p0, Lcom/android/fileexplorer/util/AppUtils$3;->val$view:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInputRightNow(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    return-void
.end method
