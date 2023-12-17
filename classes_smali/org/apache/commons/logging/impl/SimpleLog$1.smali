.class Lorg/apache/commons/logging/impl/SimpleLog$1;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->access$000()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SimpleLog$1;->val$name:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
