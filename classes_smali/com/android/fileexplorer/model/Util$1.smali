.class Lcom/android/fileexplorer/model/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$1;->val$activity:Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$1;->val$activity:Landroid/app/Activity;

    .line 3
    const-string p2, "00022"

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 8
    return-void
.end method
