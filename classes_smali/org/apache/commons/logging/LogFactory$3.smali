.class Lorg/apache/commons/logging/LogFactory$3;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$loader:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$3;->val$loader:Ljava/lang/ClassLoader;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$3;->val$name:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$3;->val$loader:Ljava/lang/ClassLoader;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$3;->val$name:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$3;->val$name:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
