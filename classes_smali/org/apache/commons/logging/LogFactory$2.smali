.class Lorg/apache/commons/logging/LogFactory$2;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$classLoader:Ljava/lang/ClassLoader;

.field private final synthetic val$factoryClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$2;->val$factoryClass:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$2;->val$classLoader:Ljava/lang/ClassLoader;

    .line 8
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$2;->val$factoryClass:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$2;->val$classLoader:Ljava/lang/ClassLoader;

    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/logging/LogFactory;->createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
