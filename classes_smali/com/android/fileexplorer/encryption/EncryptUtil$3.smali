.class Lcom/android/fileexplorer/encryption/EncryptUtil$3;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->operationDeleteFiles(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$3;->val$context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$3;->val$list:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$3;->val$context:Landroid/content/Context;

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$3;->val$list:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$100(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 8
    return-void
.end method
