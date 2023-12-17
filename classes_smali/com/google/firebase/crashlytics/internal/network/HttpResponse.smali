.class public Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public code()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    .line 3
    return v0
.end method
