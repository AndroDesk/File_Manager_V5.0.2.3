.class public Lcom/google/firebase/crashlytics/internal/common/SystemCurrentTimeProvider;
.super Ljava/lang/Object;
.source "SystemCurrentTimeProvider.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
