.class public Lcom/google/firebase/installations/time/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/firebase/installations/time/Clock;


# static fields
.field private static singleton:Lcom/google/firebase/installations/time/SystemClock;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/installations/time/SystemClock;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/google/firebase/installations/time/SystemClock;

    .line 7
    invoke-direct {v0}, Lcom/google/firebase/installations/time/SystemClock;-><init>()V

    .line 10
    sput-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    .line 12
    :cond_b
    sget-object v0, Lcom/google/firebase/installations/time/SystemClock;->singleton:Lcom/google/firebase/installations/time/SystemClock;

    .line 14
    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
