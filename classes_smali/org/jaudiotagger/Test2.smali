.class Lorg/jaudiotagger/Test2;
.super Lorg/jaudiotagger/Test;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/Test;-><init>()V

    .line 4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    .line 1
    new-instance p0, Lorg/jaudiotagger/Test2;

    .line 3
    invoke-direct {p0}, Lorg/jaudiotagger/Test2;-><init>()V

    .line 6
    invoke-static {}, Lorg/jaudiotagger/Test;->writeIt()V

    .line 9
    return-void
.end method
