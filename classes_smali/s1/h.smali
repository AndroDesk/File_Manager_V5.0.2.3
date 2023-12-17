.class public final Ls1/h;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;
    .registers 4

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Ls1/h$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_138

    goto/16 :goto_136

    :pswitch_11  #0x7, 0x8, 0x9, 0xa
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Meet EOF when json not end."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_19  #0x6
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_27

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    goto/16 :goto_136

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected null but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3c  #0x5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_61

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_4a

    goto :goto_61

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    :goto_61
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    goto/16 :goto_137

    :pswitch_68  #0x4
    :try_start_68
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_70} :catch_73

    :goto_70
    move-object v0, p0

    goto/16 :goto_137

    :catch_73
    :try_start_73
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_7b} :catch_7c

    goto :goto_70

    :catch_7c
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v0, v1, :cond_9f

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_8a

    goto :goto_9f

    :cond_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a double but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_70

    :pswitch_ad  #0x3
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_c7

    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_be

    const/4 v0, 0x1

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_137

    :cond_c7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_dc  #0x2
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V

    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->obtain()Lcn/kuaipan/android/utils/ObtainabelHashMap;

    move-result-object v0

    :try_start_e5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    :goto_e9
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_fd

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_e9

    :cond_fd
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_100} :catch_106
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_100} :catch_101

    goto :goto_137

    :catch_101
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    throw p0

    :catch_106
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;->recycle()V

    throw p0

    :pswitch_10b  #0x1
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V

    invoke-static {}, Lcn/kuaipan/android/utils/ObtainabelList;->obtain()Lcn/kuaipan/android/utils/ObtainabelList;

    move-result-object v0

    :try_start_114
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    :goto_118
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    if-eq v1, v2, :cond_128

    invoke-static {p0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    goto :goto_118

    :cond_128
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->g(Lcn/kuaipan/android/utils/JsonToken;)V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_12b} :catch_131
    .catch Lorg/json/JSONException; {:try_start_114 .. :try_end_12b} :catch_12c

    goto :goto_137

    :catch_12c
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    throw p0

    :catch_131
    move-exception p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/ObtainabelList;->recycle()V

    throw p0

    :goto_136
    const/4 v0, 0x0

    :goto_137
    return-object v0

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_10b  #00000001
        :pswitch_dc  #00000002
        :pswitch_ad  #00000003
        :pswitch_68  #00000004
        :pswitch_3c  #00000005
        :pswitch_19  #00000006
        :pswitch_11  #00000007
        :pswitch_11  #00000008
        :pswitch_11  #00000009
        :pswitch_11  #0000000a
    .end packed-switch
.end method

.method public static b(Ljava/io/InputStream;)Ljava/io/Serializable;
    .registers 3

    new-instance v0, Lcn/kuaipan/android/utils/a;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    move-result-object p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_17

    return-object p0

    :cond_17
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/io/StringReader;)Ljava/io/Serializable;
    .registers 3

    new-instance v0, Lcn/kuaipan/android/utils/a;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    move-result-object p0

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v0

    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v0, v1, :cond_12

    return-object p0

    :cond_12
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Document not end of EOF"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
