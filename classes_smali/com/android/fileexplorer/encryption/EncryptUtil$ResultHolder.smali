.class Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultHolder"
.end annotation


# instance fields
.field public mFailedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResult:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;->mResult:I

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;->mFailedList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/android/fileexplorer/encryption/EncryptUtil$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$ResultHolder;->mResult:I

    .line 3
    return v0
.end method
