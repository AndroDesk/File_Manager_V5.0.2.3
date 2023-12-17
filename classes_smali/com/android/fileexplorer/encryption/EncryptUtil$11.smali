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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$activity:Landroid/app/Activity;

    iget p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$11;->val$requestCode:I

    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$900(Landroid/app/Activity;I)V

    return-void
.end method
