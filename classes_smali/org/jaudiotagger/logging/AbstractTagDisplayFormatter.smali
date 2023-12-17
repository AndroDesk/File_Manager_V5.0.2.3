.class public abstract Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
.super Ljava/lang/Object;
.source "AbstractTagDisplayFormatter.java"


# static fields
.field private static hexBinaryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public level:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 8
    const-string v1, "0"

    .line 10
    const-string v2, "0000"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 17
    const-string v1, "1"

    .line 19
    const-string v2, "0001"

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 26
    const-string v1, "2"

    .line 28
    const-string v2, "0010"

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 35
    const-string v1, "3"

    .line 37
    const-string v2, "0011"

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 44
    const-string v1, "4"

    .line 46
    const-string v2, "0100"

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 53
    const-string v1, "5"

    .line 55
    const-string v2, "0101"

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 62
    const-string v1, "6"

    .line 64
    const-string v2, "0110"

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 71
    const-string v1, "7"

    .line 73
    const-string v2, "0111"

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 80
    const-string v1, "8"

    .line 82
    const-string v2, "1000"

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 89
    const-string v1, "9"

    .line 91
    const-string v2, "1001"

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 98
    const-string v1, "a"

    .line 100
    const-string v2, "1010"

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 107
    const-string v1, "b"

    .line 109
    const-string v2, "1011"

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 116
    const-string v1, "c"

    .line 118
    const-string v2, "1100"

    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 125
    const-string v1, "d"

    .line 127
    const-string v2, "1101"

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 134
    const-string v1, "e"

    .line 136
    const-string v2, "1110"

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 143
    const-string v1, "f"

    .line 145
    const-string v2, "1111"

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayAsBinary(B)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x8

    .line 13
    if-ne v1, v2, :cond_1b

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v3, 0x7

    .line 17
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    :goto_18
    move-object p0, v0

    .line 26
    move-object v0, v1

    .line 27
    goto :goto_3b

    .line 28
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v1, v3, :cond_2d

    .line 37
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    goto :goto_18

    .line 46
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    move-result v1

    .line 50
    if-ne v1, v4, :cond_3a

    .line 52
    const-string v1, "0"

    .line 54
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    move-result-object v0
    :try_end_39
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_39} :catch_5b

    .line 58
    goto :goto_18

    .line 59
    :cond_3a
    move-object p0, v0

    .line 60
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    sget-object v2, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->hexBinaryMap:Ljava/util/HashMap;

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/String;

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :catch_5b
    return-object v0
.end method


# virtual methods
.method public abstract addElement(Ljava/lang/String;I)V
.end method

.method public abstract addElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addElement(Ljava/lang/String;Z)V
.end method

.method public abstract closeHeadingElement(Ljava/lang/String;)V
.end method

.method public abstract openHeadingElement(Ljava/lang/String;I)V
.end method

.method public abstract openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openHeadingElement(Ljava/lang/String;Z)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
