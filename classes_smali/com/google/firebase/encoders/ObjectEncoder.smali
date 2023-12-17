.class public interface abstract Lcom/google/firebase/encoders/ObjectEncoder;
.super Ljava/lang/Object;
.source "ObjectEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/Encoder<",
        "TT;",
        "Lcom/google/firebase/encoders/ObjectEncoderContext;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
