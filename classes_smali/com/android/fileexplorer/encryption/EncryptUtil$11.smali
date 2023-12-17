.class Lcom/android/fileexplorer/encryption/EncryptUtil$11;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->setPattern(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$activity:Landroid/app/Activity;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$requestCode:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$activity:Landroid/app/Activity;

    .line 3
    iget p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$requestCode:I

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$900(Landroid/app/Activity;I)V

    .line 8
    return-void
.end method
