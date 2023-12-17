.class Lorg/apache/commons/logging/LogFactory$6;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$def:Ljava/lang/String;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$6;->val$key:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$6;->val$def:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$6;->val$key:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$6;->val$def:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
