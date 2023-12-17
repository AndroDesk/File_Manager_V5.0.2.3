.class public Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;
.super Ljava/lang/Object;
.source "FileCommitResult.java"

# interfaces
.implements Ls1/a$a;


# static fields
.field public static final PARSER:Ls1/a$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a$a$a<",
            "Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final stat:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->PARSER:Ls1/a$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->stat:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lcom/xiaomi/opensdk/file/sdk/FileCommitResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;-><init>(Ljava/util/Map;)V

    return-void
.end method
