.class Lorg/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    .line 6
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2c

    .line 9
    new-instance v1, Ljava/util/Properties;

    .line 11
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 20
    return-object v1

    .line 21
    :catch_14
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2c

    .line 27
    const-string v0, "Unable to read URL "

    .line 29
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->access$000(Ljava/lang/String;)V

    .line 45
    :cond_2c
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method
