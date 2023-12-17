.class public final Lcom/google/firebase/emulators/EmulatedServiceSettings;
.super Ljava/lang/Object;
.source "EmulatedServiceSettings.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->host:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->port:I

    .line 8
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->host:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->port:I

    .line 3
    return v0
.end method
