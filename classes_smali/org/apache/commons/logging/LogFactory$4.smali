.class Lorg/apache/commons/logging/LogFactory$4;
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
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    .line 4
    if-eqz v1, :cond_c

    .line 6
    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 18
    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    return-object v0

    .line 20
    :catch_13
    move-exception v1

    .line 21
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_38

    .line 27
    const-string v2, "Exception while trying to find configuration file "

    .line 29
    invoke-static {v2}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    const-string v3, ":"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->access$000(Ljava/lang/String;)V

    .line 57
    :cond_38
    return-object v0
.end method
